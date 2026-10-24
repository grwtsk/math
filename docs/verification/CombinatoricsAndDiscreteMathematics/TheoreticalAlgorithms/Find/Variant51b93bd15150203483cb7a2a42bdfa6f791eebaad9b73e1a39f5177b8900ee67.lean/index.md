# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Find.Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1242afcbd791bbcc4c70eafb6ec11e8d213b70ef",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1242afcbd791bbcc4c70eafb6ec11e8d213b70ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Find` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Range` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Prod` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [find?_eq_some_iff_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean/declarations/find-eq-some-iff-getelem--cded643ad3e697dbfb1e8042.md) | 38 | `result-track:cded643ad3e697dbfb1e8042e48ad7b4be2a21d3dcc927cd0ff331a995e7ab25` |
| 2 | `theorem` | [findIdx?_eq_some_le_of_findIdx?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant51b93bd15150203483cb7a2a42bdfa6f791eebaad9b73e1a39f5177b8900ee67.lean/declarations/findidx-eq-some-le-of-findidx-eq-some--a3584f9cdb4d9e0456ab9dc5.md) | 62 | `result-track:a3584f9cdb4d9e0456ab9dc5fb157802484c45464d5314839f44fd37c2f89b0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
