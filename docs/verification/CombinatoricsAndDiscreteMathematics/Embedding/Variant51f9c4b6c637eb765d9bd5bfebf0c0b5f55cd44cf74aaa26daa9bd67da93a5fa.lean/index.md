# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Embedding.Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1ff216af673891dcd1410532a35dff5fd90033d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1ff216af673891dcd1410532a35dff5fd90033d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Embedding` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_embedding_disjoint_range_of_add_le_ENat_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean/declarations/exists-embedding-disjoint-range-of-add-le-enat-card--b5641eed52707759485b896e.md) | 41 | `result-track:b5641eed52707759485b896ec4c637a65596d57b20160c69da63e8c3dcc88d68` |
| 2 | `theorem` | [exists_embedding_disjoint_range_of_add_le_Nat_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean/declarations/exists-embedding-disjoint-range-of-add-le-nat-card--00af2581acfc6f1a121acfed.md) | 59 | `result-track:00af2581acfc6f1a121acfed914b768a3b9fd16ae4970bf5b27392f8f700e1b5` |
| 3 | `theorem` | [restrictSurjective_of_add_le_ENatCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean/declarations/restrictsurjective-of-add-le-enatcard--187a9e4953494420a52bd825.md) | 65 | `result-track:187a9e4953494420a52bd825787cf3bb08bd1e428c91f1cb77498d077db4c84c` |
| 4 | `theorem` | [restrictSurjective_of_add_le_natCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean/declarations/restrictsurjective-of-add-le-natcard--e7a4d4b85b666a8c43e3676f.md) | 75 | `result-track:e7a4d4b85b666a8c43e3676f795ce37bd8eef9fcb4f68ea1fd04ba88470d7463` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
