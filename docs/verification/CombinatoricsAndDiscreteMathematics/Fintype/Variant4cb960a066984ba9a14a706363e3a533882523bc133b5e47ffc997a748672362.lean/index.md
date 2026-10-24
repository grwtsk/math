# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1af258ead54dd8288f9ab57bda53ec9b8aa42918",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1af258ead54dd8288f9ab57bda53ec9b8aa42918`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Single` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Finsupp.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean/declarations/finsupp-fintype--367c3612b34db9db7348f77f.md) | 19 | `declaration-track:367c3612b34db9db7348f77febbd22f8c77684712724a09f06390209677972ff` |
| 2 | `instance` | [Finsupp.infinite_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean/declarations/finsupp-infinite-of-left--9678e35e6adae6209e5af886.md) | 22 | `declaration-track:9678e35e6adae6209e5af886297e6b8df3ca937ee39e8b5d3b2a8c34e0f4db43` |
| 3 | `instance` | [Finsupp.infinite_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean/declarations/finsupp-infinite-of-right--7537fb77fe9b918bd117ccf6.md) | 26 | `declaration-track:7537fb77fe9b918bd117ccf6577eb87f746f3deb91178a03177f2441e3887455` |
| 4 | `lemma` | [Fintype.card_finsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean/declarations/fintype-card-finsupp--9d97a00139be7b7607ad4994.md) | 31 | `result-track:9d97a00139be7b7607ad4994931d4fdb5d28d0f06a3bbeb08dc932d4d7131b3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
