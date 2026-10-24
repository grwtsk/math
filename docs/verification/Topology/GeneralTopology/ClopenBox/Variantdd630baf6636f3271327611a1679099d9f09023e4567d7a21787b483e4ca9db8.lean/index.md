# Verification target: GRWTSK.Topology.GeneralTopology.ClopenBox.Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31efbdf82d985a9c8139a9d8fb7a1227ecaad81a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31efbdf82d985a9c8139a9d8fb7a1227ecaad81a`.

Source path: `GRWTSK/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Profinite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_prod_subset](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/declarations/exists-prod-subset--437b061351db45a2600554f3.md) | 48 | `result-track:437b061351db45a2600554f3c21c5cff52b633968c19388c4957a6d0ffae72aa` |
| 2 | `theorem` | [exists_finset_eq_sup_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/declarations/exists-finset-eq-sup-prod--6bad17c571a0824ba1de7599.md) | 62 | `result-track:6bad17c571a0824ba1de7599808373b9c3412178015524c65ece1630b73ab53e` |
| 3 | `lemma` | [surjective_finset_sup_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/declarations/surjective-finset-sup-prod--b08851d688397dfb436f2d39.md) | 75 | `result-track:b08851d688397dfb436f2d39a6717d16abff0d546fd5e5b03fcb01eefc034f11` |
| 4 | `instance` | [countable_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/declarations/countable-prod--d7eb7e897fac61c353ef7caf.md) | 79 | `declaration-track:d7eb7e897fac61c353ef7caf3a6191463b57db8bc512031330c2803eda4f07dc` |
| 5 | `instance` | [finite_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/declarations/finite-prod--977bcafb59e8a59801af203c.md) | 83 | `declaration-track:977bcafb59e8a59801af203ce2b12586e9263fec71480a7e5ff47d6aa6954dec` |
| 6 | `lemma` | [countable_iff_secondCountable](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantdd630baf6636f3271327611a1679099d9f09023e4567d7a21787b483e4ca9db8.lean/declarations/countable-iff-secondcountable--9fcd8e46706eec5d7519c4ea.md) | 89 | `result-track:9fcd8e46706eec5d7519c4ea5c576ffd1298f5c312293cea9f6718781370e589` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
