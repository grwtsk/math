# Verification target: GRWTSK.Algebra.LinearAlgebra.OfAlternating.Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54baffabbf968dd6288cff3597bab3bae524699f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54baffabbf968dd6288cff3597bab3bae524699f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AlternatingMap.instModuleAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/alternatingmap-instmoduleaddcommgroup--181f7073c430606aae105e54.md) | 35 | `declaration-track:181f7073c430606aae105e547c51507710c4ff4e7e35692ef5b1f83cac7d279b` |
| 2 | `def` | [liftAlternating](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternating--71a8bc0945f0eeb5cde09180.md) | 46 | `declaration-track:71a8bc0945f0eeb5cde09180f0a1c42b38f20f9b68014ea68afb7cfcf0c6023b` |
| 3 | `theorem` | [liftAlternating_ι](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternating--c7d616e63e53fa7e51ec5f23.md) | 70 | `result-track:c7d616e63e53fa7e51ec5f23596c2385bad423a5b8ad1c2fbe726981b4fba569` |
| 4 | `theorem` | [liftAlternating_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternating-mul--88eee0d5c5b57f67443fa1df.md) | 81 | `result-track:88eee0d5c5b57f67443fa1dff51a88e34e54618cf54625b6a6c2c8187de75718` |
| 5 | `theorem` | [liftAlternating_one](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternating-one--70934cf682ed4d4f909b83f4.md) | 91 | `result-track:70934cf682ed4d4f909b83f49f95601ef33309a95111cc60a882421491c4b088` |
| 6 | `theorem` | [liftAlternating_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternating-algebramap--ac4f4ced7119ec5c29fd4439.md) | 98 | `result-track:ac4f4ced7119ec5c29fd443997de993dc21937dd650d70181b0fcd6ab4da6b8d` |
| 7 | `theorem` | [liftAlternating_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternating-apply-multi--b94165c70feca2dbb5f3c378.md) | 105 | `result-track:b94165c70feca2dbb5f3c378fa04d1d020ceac50ffa48229f6b14ea3dfdfafd2` |
| 8 | `theorem` | [liftAlternating_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternating-comp-multi--54528d82802d55ad1eabddfd.md) | 121 | `result-track:54528d82802d55ad1eabddfd544d0cb55f79bc7e86ac32d688b50df611e8df5f` |
| 9 | `theorem` | [liftAlternating_comp](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternating-comp--0edb22a1e51554080c2036db.md) | 127 | `result-track:0edb22a1e51554080c2036dbca049cd0127d36ca1c3a885a3460555eb923735d` |
| 10 | `theorem` | [liftAlternating_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternating-multi--631792e1e03bc1a182e886d3.md) | 141 | `result-track:631792e1e03bc1a182e886d3434cf19697b56d8326be43e37ff310693253e665` |
| 11 | `def` | [liftAlternatingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/liftalternatingequiv--d723fee94a51eda972169c40.md) | 155 | `declaration-track:d723fee94a51eda972169c406362997156c52f66691f467d3a414ca0487667e8` |
| 12 | `theorem` | [lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/declarations/lhom-ext--75072b78e63ab94601d26544.md) | 171 | `result-track:75072b78e63ab94601d26544bdf055f410d9e2ee8c73da59b72cd289c79e268f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
