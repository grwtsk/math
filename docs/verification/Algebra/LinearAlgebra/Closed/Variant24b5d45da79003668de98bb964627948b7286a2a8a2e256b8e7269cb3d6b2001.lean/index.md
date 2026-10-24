# Verification target: GRWTSK.Algebra.LinearAlgebra.Closed.Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddcce4f281924e087eefb98ab89d0d7b6e680278",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddcce4f281924e087eefb98ab89d0d7b6e680278`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Yoneda` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalClosedHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/declarations/monoidalclosedhomequiv--1471c7cea9016802e32c5742.md) | 27 | `declaration-track:1471c7cea9016802e32c574207b1a0337c17e7ca674d06a617755a1e47214a1d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/declarations/instance--f4d63df1625e3e571e782ec3.md) | 40 | `declaration-track:f4d63df1625e3e571e782ec330bf9ebfa892b9112c34f41ef4ad977d1e0a26fb` |
| 3 | `theorem` | [ihom_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/declarations/ihom-map-apply--63847abc73a4450cfb5dc9e3.md) | 53 | `result-track:63847abc73a4450cfb5dc9e34529787bad662759fd2ac874b858f76ed83839d7` |
| 4 | `theorem` | [monoidalClosed_curry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/declarations/monoidalclosed-curry--f694263bdca8606616f97f01.md) | 59 | `result-track:f694263bdca8606616f97f01d6235d01de435fa9f5738a3bb4ac96aaa5eecd37` |
| 5 | `theorem` | [monoidalClosed_uncurry](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/declarations/monoidalclosed-uncurry--72a69213f1f1c8f4494d4b07.md) | 64 | `result-track:72a69213f1f1c8f4494d4b07307bb60aaacbd5b587707ccd5e023c17a1b4eaf6` |
| 6 | `theorem` | [ihom_ev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/declarations/ihom-ev-app--fa17503da1fc47bec26b3e33.md) | 72 | `result-track:fa17503da1fc47bec26b3e3347dcab252f71c2f4b3365e159001385bdd8628b6` |
| 7 | `theorem` | [ihom_coev_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/declarations/ihom-coev-app--4b5d21fa7ded3501927811dc.md) | 83 | `result-track:4b5d21fa7ded3501927811dc9112d9a69b70161804c828da01921962c4b63447` |
| 8 | `theorem` | [monoidalClosed_pre_app](../../../../../mathematics/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/declarations/monoidalclosed-pre-app--0d003590381a64ed19f34cfb.md) | 87 | `result-track:0d003590381a64ed19f34cfb3fff1e7fca1ff9103ff29b3043732311ae0e2080` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
