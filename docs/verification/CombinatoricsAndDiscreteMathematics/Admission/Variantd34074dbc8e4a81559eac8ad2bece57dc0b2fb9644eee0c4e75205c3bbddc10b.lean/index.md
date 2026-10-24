# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Admission.Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b48fd39b5c4358a5f7b5d295ffdfc881bd0b264",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b48fd39b5c4358a5f7b5d295ffdfc881bd0b264`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Noninterference` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RawGraphAccessRequest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean/declarations/rawgraphaccessrequest--22910cab347db8c6f54db057.md) | 13 | `declaration-track:22910cab347db8c6f54db0579005b19dc0eb3d2f30acbeb218e3328f27b99a7b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean/declarations/instance--eca346dbd865f4a272f7250e.md) | 18 | `declaration-track:eca346dbd865f4a272f7250eb8a6e46ab28b4683f3cb90e6bf8e235b5566ffe4` |
| 3 | `inductive` | [RequestAdmissionFailure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean/declarations/requestadmissionfailure--524fdfdd71cb312df4a52cbd.md) | 24 | `declaration-track:524fdfdd71cb312df4a52cbd90423478a76b54ab9f86cccac01cf487c6ca7924` |
| 4 | `inductive` | [RequestAdmission](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean/declarations/requestadmission--e36e8077773dfa2f16051410.md) | 39 | `declaration-track:e36e8077773dfa2f16051410082edf28ff3138fc914422327a9078ca2472afb4` |
| 5 | `structure` | [RequestAdmitter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b.lean/declarations/requestadmitter--6126d0bd2fc5936b960666e9.md) | 52 | `declaration-track:6126d0bd2fc5936b960666e94089309e836a4df2d386095ef82e437fced70782` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
