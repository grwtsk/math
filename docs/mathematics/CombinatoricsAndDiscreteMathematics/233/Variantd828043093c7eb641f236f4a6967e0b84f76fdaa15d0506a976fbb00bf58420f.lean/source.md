# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.233.Variantd828043093c7eb641f236f4a6967e0b84f76fdaa15d0506a976fbb00bf58420f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07f7982b65569fe8b456c151d42172af6b9786c1` · SHA-256 `e8fdf1a2f125d733c02739d3829fc8e59c40aa060d55dcc550e38963266f16c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Erdos.Variant98adc4119f06325a10767a3deae52241315b56ad84a79e328ba9bf3d6b2411ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98adc4119f06325a10767a3deae52241315b56ad84a79e328ba9bf3d6b2411ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Erdos.Variant98adc4119f06325a10767a3deae52241315b56ad84a79e328ba9bf3d6b2411ca","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"98adc4119f06325a10767a3deae52241315b56ad84a79e328ba9bf3d6b2411ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/unknown/.build/erdos-source-review/233.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright 2025 The Formal Conjectures Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-/
module

public import FormalConjecturesUtil

/-!
# Erdős Problem 233

*References:*
  - [erdosproblems.com/233](https://www.erdosproblems.com/233)
  - [A74741](https://oeis.org/A74741)
  - [Wikipedia](https://en.wikipedia.org/wiki/Cram%C3%A9r%27s_conjecture)
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Erdos.Variant98adc4119f06325a10767a3deae52241315b56ad84a79e328ba9bf3d6b2411ca

@[expose] public section

open Filter Real

namespace Erdos233

/--
A conjecture by Heath-Brown:
The sum of squares of the first $N$ gaps between consecutive primes behaves like $N * (log N)^2$.
-/
@[category research open, AMS 11]
theorem erdos_233 :
    (fun N => ((∑ n ∈ Finset.range N, (primeGap n) ^ 2) : ℝ)) =O[atTop] fun N => N * (log N)^2 := by
  sorry

/--
Cramér proved an upper bound of $O(N(\log N)^4)$ conditional on the Riemann hypothesis.
-/
@[category research solved, AMS 11]
theorem erdos_233.variants.upper_bound (h : RiemannHypothesis) :
    (fun N => ((∑ n ∈ Finset.range N, (primeGap n) ^ 2) : ℝ)) =O[atTop] fun N => N * (log N)^4 := by
  sorry

/--
The prime number theorem immediately implies a lower bound of $\gg N(\log N)^2$ for the sum of
squares of gaps between consecutive primes.

Formal proof linked here provided by AlphaProof.
-/
@[category research solved, AMS 11, formal_proof using formal_conjectures at "https://github.com/mzhorvath1/formal-conjectures/blob/032848c62fdf4c422bb0ee6663dc8d009d456c2c/FormalConjectures/ErdosProblems/233.lean#L57"]
theorem erdos_233.variants.lower_bound :
    (fun (N : ℕ) => N * (log N)^2) =O[atTop]
    (fun N => ((∑ n ∈ Finset.range N, (primeGap n) ^ 2) : ℝ)) := by
  sorry

end Erdos233
```
