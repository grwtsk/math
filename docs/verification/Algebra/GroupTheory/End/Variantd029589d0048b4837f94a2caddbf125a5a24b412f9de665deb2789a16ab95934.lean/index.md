# Verification target: GRWTSK.Algebra.GroupTheory.End.Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65262c3361564a1ea8f0c05d5c3673aff8b79a90",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65262c3361564a1ea8f0c05d5c3673aff8b79a90`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Instances` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean/declarations/instaddmonoidwithone--a74858a8f7ecaaf707851d49.md) | 35 | `declaration-track:a74858a8f7ecaaf707851d4965a4da39f3d52cef4955cbe48d3798eb9926803a` |
| 2 | `lemma` | [natCast_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean/declarations/natcast-apply--497ddf03b019863a9969bb58.md) | 42 | `result-track:497ddf03b019863a9969bb58a879f06f1c3bf0e90f64df0aaf9ed0cff46b0d39` |
| 3 | `lemma` | [ofNat_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean/declarations/ofnat-apply--28b729f6a248b005d3682063.md) | 44 | `result-track:28b729f6a248b005d3682063a388652f33b00f8655f4679595d829befb13abec` |
| 4 | `instance` | [instSemiring](../../../../../mathematics/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean/declarations/instsemiring--597a6e73679e1dc656dac7f7.md) | 47 | `declaration-track:597a6e73679e1dc656dac7f7b41792c5308f490b42959177221239dd7cdb1c1c` |
| 5 | `instance` | [instRing](../../../../../mathematics/Algebra/GroupTheory/End/Variantd029589d0048b4837f94a2caddbf125a5a24b412f9de665deb2789a16ab95934.lean/declarations/instring--ffae0a8c28f6f22890cf4195.md) | 56 | `declaration-track:ffae0a8c28f6f22890cf4195a3c104e46d12ea81e809bc763c49f48413536086` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
