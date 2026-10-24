# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e538a9f2f8099ce2683de09b7ddf67abe932fbdc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e538a9f2f8099ce2683de09b7ddf67abe932fbdc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Azumaya.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AlgHom.mulLeftRight_bij](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean/declarations/alghom-mulleftright-bij--679c6f3ab9351098d31313e4.md) | 45 | `result-track:679c6f3ab9351098d31313e47ae88acd66cbd368c720c706e0388e123c90b308` |
| 2 | `abbrev` | [tensorEquivEnd](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean/declarations/tensorequivend--bfbbd0e275026eb0f115f329.md) | 50 | `declaration-track:bfbbd0e275026eb0f115f329536d2b4709187945d4e479d0e59d2b45ff872b02` |
| 3 | `lemma` | [coe_tensorEquivEnd](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean/declarations/coe-tensorequivend--eb54edf92703882d66909481.md) | 53 | `result-track:eb54edf92703882d669094812812814f02eea52b8eb4ad764dd3905ea29ce202` |
| 4 | `instance` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean/declarations/id--b9094c2faa80679dbacdf677.md) | 56 | `declaration-track:b9094c2faa80679dbacdf677cf1a4d43233651794653528e33d837b939179def` |
| 5 | `lemma` | [mulLeftRight_comp_congr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean/declarations/mulleftright-comp-congr--5563e1dcb07c332d6c919855.md) | 73 | `result-track:5563e1dcb07c332d6c919855cff99b96bca269a72eb37f43ec10f9b716772669` |
| 6 | `theorem` | [of_AlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant64101e26857bcf8c7a1863766d33635eb541d82f10798c74d11bad9b32444430.lean/declarations/of-algequiv--6b76466b6e00ea88748135f8.md) | 84 | `result-track:6b76466b6e00ea88748135f84af555b3235ae8f3a50ba5f6fe4cd4775d18ef57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
