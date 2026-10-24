# Verification target: GRWTSK.Algebra.GroupTheory.End.Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ea0b980390d9b1adf4aa133728ef2e2ad84ce25",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ea0b980390d9b1adf4aa133728ef2e2ad84ce25`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Instances` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean/declarations/instaddmonoidwithone--855b67fcda8b49ef332d7424.md) | 27 | `declaration-track:855b67fcda8b49ef332d742453d69806130897811e10a39818aacd2c524e06b5` |
| 2 | `lemma` | [natCast_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean/declarations/natcast-apply--610d0e46767a91e58b9e667a.md) | 34 | `result-track:610d0e46767a91e58b9e667acbced56dbb5e784131ee7c7a384bea521fa37a37` |
| 3 | `lemma` | [ofNat_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean/declarations/ofnat-apply--22d0d7c6ece12952de0e646f.md) | 36 | `result-track:22d0d7c6ece12952de0e646fa98040f1e9eb44caf43d46c4706188d99e21b5dc` |
| 4 | `instance` | [instSemiring](../../../../../mathematics/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean/declarations/instsemiring--17e6619bbd29c4d6a81da842.md) | 39 | `declaration-track:17e6619bbd29c4d6a81da8428e9d9427255b2d5c756ac9bf97b2fb3ae6143388` |
| 5 | `instance` | [instRing](../../../../../mathematics/Algebra/GroupTheory/End/Variant67d53423a14ca26c8b51615404245689e0e985afd70843fb734446cbf6d0a1f5.lean/declarations/instring--9befcb7e413552c17e6c3787.md) | 48 | `declaration-track:9befcb7e413552c17e6c37872fda119a7d783691472a3f9d16220fb47b8e7340` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
