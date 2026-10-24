# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3a78aa1913dcb4014eb1ccb5e90542d16b6e209",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3a78aa1913dcb4014eb1ccb5e90542d16b6e209`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pretransitive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Function.Surjective.mulActionLeft](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/declarations/function-surjective-mulactionleft--4452d52d15b06c5278bd8170.md) | 36 | `declaration-track:4452d52d15b06c5278bd817010def8177536bb95c06c2658dab353e786392736` |
| 2 | `abbrev` | [compHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/declarations/comphom--f3a7003acc3570eedd017179.md) | 52 | `declaration-track:f3a7003acc3570eedd0171793f6ee5aba0eaaf69a40b8de69030ca96b59874aa` |
| 3 | `lemma` | [compHom_smul_def](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/declarations/comphom-smul-def--0ef343b7b7993faacff8bb79.md) | 64 | `result-track:0ef343b7b7993faacff8bb79e40c6daa5add62b99217d4305ad7b54d649d0605` |
| 4 | `lemma` | [isPretransitive_compHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/declarations/ispretransitive-comphom--508202beb647ee2225a26a32.md) | 72 | `result-track:508202beb647ee2225a26a329bb8981c63e931ae28b770bd45634d698cbcf372` |
| 5 | `lemma` | [IsPretransitive.of_compHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/declarations/ispretransitive-of-comphom--eadccb3f061b22a879164074.md) | 83 | `result-track:eadccb3f061b22a87916407448842a209fb13ba32324f5b935ce725eeae06166` |
| 6 | `def` | [MonoidHom.smulOneHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/declarations/monoidhom-smulonehom--3956897c4e2ebb5f14d66383.md) | 97 | `declaration-track:3956897c4e2ebb5f14d66383548bd656011c955ba923ee99cd15cf3c2fbc3511` |
| 7 | `def` | [monoidHomEquivMulActionIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant4ea68845cb0c7025de0aa5331f8ce4056bf0e4f57f24558ca3a779be414dd881.lean/declarations/monoidhomequivmulactionisscalartower--319d3040aad171333aa4947a.md) | 108 | `declaration-track:319d3040aad171333aa4947a7c69118f3c97eb81f5f2296bf72052f44704e28b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
