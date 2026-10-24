# Verification target: GRWTSK.Algebra.GroupTheory.Duality.Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "986bd3ab47ee796253a88766ac3775e4b233da02",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Duality/Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `986bd3ab47ee796253a88766ac3775e4b233da02`.

Source path: `GRWTSK/Algebra/GroupTheory/Duality/Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Duality/Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FiniteAbelian.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [dvd_exponent](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487.lean/declarations/dvd-exponent--3090a78633c5078967e6ca05.md) | 32 | `result-track:3090a78633c5078967e6ca056a7e124952ac09ad83152dcb47a6ecff35dc5f96` |
| 2 | `lemma` | [exists_apply_ne_one_aux](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487.lean/declarations/exists-apply-ne-one-aux--2810c7eba0755aed9ec6e3a8.md) | 44 | `result-track:2810c7eba0755aed9ec6e3a831f1cfd9bb5c93434443b0c3dd4647e4c46ddd85` |
| 3 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity--083a71dff4a0d422af986ac8.md) | 65 | `result-track:083a71dff4a0d422af986ac8835c293d816a1c0ff9fa8ff7b1dd454455119039` |
| 4 | `theorem` | [monoidHom_mulEquiv_of_hasEnoughRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Duality/Variant5eb0cbb95ff7eb4cb7f1b67184c2c3e887f12f0ed2bf3609b21ef6a19acb6487.lean/declarations/monoidhom-mulequiv-of-hasenoughrootsofunity--71b22fa28871e8d9995f381f.md) | 75 | `result-track:71b22fa28871e8d9995f381f1b2b7f6af86c6d9066498a5b235d782d621c228f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
