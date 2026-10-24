# Verification target: GRWTSK.Algebra.LinearAlgebra.Closed.Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "104602ff05a2b9e6ab16e5733c619067209fb68b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `104602ff05a2b9e6ab16e5733c619067209fb68b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalClosedHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/declarations/monoidalclosedhomequiv--935ae01f5ec9b15c6ab1cd27.md) | 36 | `declaration-track:935ae01f5ec9b15c6ab1cd2704067782188273230dbc8c75664c582906945bb5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/declarations/instance--d61b0f11611615261ebecad4.md) | 51 | `declaration-track:d61b0f11611615261ebecad4bee4969f1041354dbd771ff9b8800f8fcbaf97bd` |
| 3 | `theorem` | [ihom_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/declarations/ihom-map-apply--a83b7056c3abe25fad354217.md) | 64 | `result-track:a83b7056c3abe25fad354217287b87f04e9a5df70840e3c69d2e7c39e91e55a5` |
| 4 | `theorem` | [monoidalClosed_curry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/declarations/monoidalclosed-curry--0a7b84d8e23e2afa3df308e1.md) | 75 | `result-track:0a7b84d8e23e2afa3df308e1fd5e48fcb5cd97487a3ad079d999da605c35b724` |
| 5 | `theorem` | [monoidalClosed_uncurry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/declarations/monoidalclosed-uncurry--75c73beec7d4297074739ea1.md) | 83 | `result-track:75c73beec7d4297074739ea169f77a8b80cc8fe47c2aa6ce3f92d230b9859712` |
| 6 | `theorem` | [ihom_ev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/declarations/ihom-ev-app--57398f1e71b1d6c1c166ca6f.md) | 94 | `result-track:57398f1e71b1d6c1c166ca6f1a6d1bdc385b01f9234bfd89a6d758fec0774da5` |
| 7 | `theorem` | [ihom_coev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/declarations/ihom-coev-app--00f7f9df78dbc0ecbce825f5.md) | 104 | `result-track:00f7f9df78dbc0ecbce825f5243152c9e434e196ca20984a5ec0ad2aa51276e0` |
| 8 | `theorem` | [monoidalClosed_pre_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant6df65d051d0d73581383916f813da78876ed5c95a3e03e523da91503518a029a.lean/declarations/monoidalclosed-pre-app--cd1ec1645ea5bb09196bfc55.md) | 110 | `result-track:cd1ec1645ea5bb09196bfc5580f1c18be6a82e883bcef42e146f7e73eb0e7f73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
