# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Neighborhood.Variantde31f6e08f588dcddd02f578b712d2248463e38e3a3cff25eb6838b6379a900c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c884096ae3a321b7173eb5ab3eb3a8acc7938d69` · SHA-256 `dcef6c5b5d265ef30278d5749815846c7c0400469518c9cc77ffb07c6b2de5d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutCombinatorics.Variant29f27b9c1b0d03b6133fbb3c6d103e993b6b9f432aae7f1470e818d4cae19713","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29f27b9c1b0d03b6133fbb3c6d103e993b6b9f432aae7f1470e818d4cae19713","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimeCutCombinatorics.Variant29f27b9c1b0d03b6133fbb3c6d103e993b6b9f432aae7f1470e818d4cae19713","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"29f27b9c1b0d03b6133fbb3c6d103e993b6b9f432aae7f1470e818d4cae19713","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/PrimeHorizon/Neighborhood.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Nat.Choose.Basic
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Insertion

/-!
# Cut-neighborhood primitives

Shells group equal-depth cuts.  A downstream cone is the finite neighborhood
of cuts containing one insertion target.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutCombinatorics.Variant29f27b9c1b0d03b6133fbb3c6d103e993b6b9f432aae7f1470e818d4cae19713

namespace Mathematics.SemiLocalDefect.SoninCore

def cutShell
    (U : FinitePrimeHorizon)
    (depth : Nat) :
    Finset (PrimeCut U) :=
  Finset.univ.filter
    (fun S => S.card = depth)

def downstreamCone
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    Finset (PrimeCut U) :=
  Finset.univ.filter
    (fun T => e.target ⊆ T)

structure PrimeCutCombinatorics
    (U : FinitePrimeHorizon) : Prop where
  shell_cardinality :
    ∀ r,
      (cutShell U r).card =
      Nat.choose
        (Fintype.card U.Prime)
        r
  cone_cardinality :
    ∀ e : PrimeInsertionEdge U,
      (downstreamCone e).card =
      2 ^
        (Fintype.card U.Prime -
          e.target.card)

end Mathematics.SemiLocalDefect.SoninCore
```
