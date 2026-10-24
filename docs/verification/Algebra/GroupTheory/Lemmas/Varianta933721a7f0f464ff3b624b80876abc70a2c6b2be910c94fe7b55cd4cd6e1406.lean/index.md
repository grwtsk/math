# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c63f3e75f5b173d06d6d266531e432352be50ae3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c63f3e75f5b173d06d6d266531e432352be50ae3`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Even` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonoidHom.coe_finset_prod](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406.lean/declarations/monoidhom-coe-finset-prod--355d684025c493afae5467cb.md) | 29 | `result-track:355d684025c493afae5467cb9dcabdd7f148edd742cd03fc90c997507e5dbd4e` |
| 2 | `theorem` | [MonoidHom.finset_prod_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406.lean/declarations/monoidhom-finset-prod-apply--552e07a9390a2d17db1e149e.md) | 38 | `result-track:552e07a9390a2d17db1e149e91585f7c375dfcb76423f85d2a8833eca17cb139` |
| 3 | `lemma` | [mulSupport_prod](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406.lean/declarations/mulsupport-prod--eebff63900735269b59d64d8.md) | 48 | `result-track:eebff63900735269b59d64d83d93cab3b1d69f7ebdb4683df2b2d53298782574` |
| 4 | `lemma` | [isSquare_prod](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianta933721a7f0f464ff3b624b80876abc70a2c6b2be910c94fe7b55cd4cd6e1406.lean/declarations/issquare-prod--108634033764a953e6bf3771.md) | 54 | `result-track:108634033764a953e6bf3771f221c2f37242bdf84db120b252c19f9abc3908d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
