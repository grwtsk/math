# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ConjFinite.Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86c5b5228d46f5a8475aadd1bf5d82a83625a5fe",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86c5b5228d46f5a8475aadd1bf5d82a83625a5fe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Conj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean/declarations/instance--a779f3818d986d496096e8a4.md) | 22 | `declaration-track:a779f3818d986d496096e8a4a649b7239e5ad50a9086efb038051ec0445812a5` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean/declarations/instance--0053477f1d00051337497d36.md) | 25 | `declaration-track:0053477f1d00051337497d36a02bf7e360e599f35b00654faa6e6c9adff1ae80` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean/declarations/instance--13bb73bf35c3173937b3cdc4.md) | 28 | `declaration-track:13bb73bf35c3173937b3cdc43f52c3376fb28e6594fbeacef6f987f0555ede56` |
| 4 | `instance` | [conjugatesOf.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean/declarations/conjugatesof-fintype--dd3e2201a8150fa30f06647b.md) | 31 | `declaration-track:dd3e2201a8150fa30f06647b622ce2b428ef5acb764c100a9601d68ab569bd53` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConjFinite/Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752.lean/declarations/instance--da25568c3156aab9ab28fc01.md) | 39 | `declaration-track:da25568c3156aab9ab28fc01663dd0f03fa32eec8eea35578581fd89fa5871ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
