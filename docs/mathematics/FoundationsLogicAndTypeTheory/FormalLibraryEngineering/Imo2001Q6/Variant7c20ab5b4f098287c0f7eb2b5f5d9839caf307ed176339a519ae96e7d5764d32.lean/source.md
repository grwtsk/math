# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2001Q6.Variant7c20ab5b4f098287c0f7eb2b5f5d9839caf307ed176339a519ae96e7d5764d32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26d9363697daf8387d3a9456365d34ed7fbcd1b9` · SHA-256 `f346b412457fd25c2cc8d0d4a510bb53f0eb83570f981ea86152806ea6eb5e75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2001Q6.Variantb5cea7de546e0c3b9cc7f9dd286eaabc2b8d64cea3ae6077b6bf026d53c98066","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5cea7de546e0c3b9cc7f9dd286eaabc2b8d64cea3ae6077b6bf026d53c98066","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Imo2001Q6.Variantb5cea7de546e0c3b9cc7f9dd286eaabc2b8d64cea3ae6077b6bf026d53c98066","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b5cea7de546e0c3b9cc7f9dd286eaabc2b8d64cea3ae6077b6bf026d53c98066","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo2001Q6.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Sara Díaz Real. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sara Díaz Real
-/
module

public import Mathlib.Algebra.Ring.Associated
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.LinearCombination

/-!
# IMO 2001 Q6

Let $a$, $b$, $c$, $d$ be integers with $a > b > c > d > 0$. Suppose that

$$ a*c + b*d = (a + b - c + d) * (-a + b + c + d). $$

Prove that $a*b + c*d$ is not prime.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2001Q6.Variantb5cea7de546e0c3b9cc7f9dd286eaabc2b8d64cea3ae6077b6bf026d53c98066

variable {a b c d : ℤ}

public theorem imo2001_q6 (hd : 0 < d) (hdc : d < c) (hcb : c < b) (hba : b < a)
    (h : a * c + b * d = (a + b - c + d) * (-a + b + c + d)) : ¬Prime (a * b + c * d) := by
  intro (h0 : Prime (a * b + c * d))
  have ha : 0 < a := by lia
  have hb : 0 < b := by lia
  have hc : 0 < c := by lia
  -- the key step is to show that `a*c + b*d` divides the product `(a*b + c*d) * (a*d + b*c)`
  have dvd_mul : a * c + b * d ∣ (a * b + c * d) * (a * d + b * c) := by
    use b ^ 2 + b * d + d ^ 2
    linear_combination b * d * h
  -- since `a*b + c*d` is prime (by assumption), it must divide `a*c + b*d` or `a*d + b*c`
  obtain (h1 : a * b + c * d ∣ a * c + b * d) | (h2 : a * c + b * d ∣ a * d + b * c) :=
    h0.left_dvd_or_dvd_right_of_dvd_mul dvd_mul
  -- in both cases, we derive a contradiction
  · have aux : 0 < a * c + b * d := by nlinarith only [ha, hb, hc, hd]
    have : a * b + c * d ≤ a * c + b * d := Int.le_of_dvd aux h1
    nlinarith only [hba, hcb, hdc, h, this]
  · have aux : 0 < a * d + b * c := by nlinarith only [ha, hb, hc, hd]
    have : a * c + b * d ≤ a * d + b * c := Int.le_of_dvd aux h2
    nlinarith only [hba, hdc, h, this]
```
