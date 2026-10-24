# Verification target: GRWTSK.Algebra.LinearAlgebra.CardQuotient.Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6af03515696cd6e377e27a4a5c3c9722c72be8a2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6af03515696cd6e377e27a4a5c3c9722c72be8a2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.AbsoluteValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Associated` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Quotient` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.natAbs_det_equiv](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/declarations/submodule-natabs-det-equiv--22c3e563ac4678ab91883c49.md) | 31 | `result-track:22c3e563ac4678ab91883c49aa061d499e83152801204b7a11b57f1a14354853` |
| 2 | `theorem` | [Submodule.natAbs_det_basis_change](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/declarations/submodule-natabs-det-basis-change--041296c239ea12ec86f401ed.md) | 83 | `result-track:041296c239ea12ec86f401ed0639d09cfb48a0a4a940aea8e9fd474fa8c39125` |
| 3 | `theorem` | [AddSubgroup.index_eq_natAbs_det](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/declarations/addsubgroup-index-eq-natabs-det--cc4bcae95c8601e7c2373c8e.md) | 96 | `result-track:cc4bcae95c8601e7c2373c8eb24b7014f1fe27c8bb4cf076be6de035858cf89d` |
| 4 | `theorem` | [AddSubgroup.relindex_eq_natAbs_det](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/declarations/addsubgroup-relindex-eq-natabs-det--9c76e4e42fc23e270d4f3186.md) | 103 | `result-track:9c76e4e42fc23e270d4f3186d532e45bb6cf2391c8e91ecdb42291b04b0811ba` |
| 5 | `theorem` | [AddSubgroup.relindex_eq_abs_det](../../../../../mathematics/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/declarations/addsubgroup-relindex-eq-abs-det--f6d6136ec844757c3be432df.md) | 110 | `result-track:f6d6136ec844757c3be432df2fecc210eebbdd8f7e7429530eb892d45de06d85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
