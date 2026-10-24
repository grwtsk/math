# Verification target: GRWTSK.Algebra.Archimedean.Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9acd8162b8e3f1a2638324921c6d726b60cded8f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9acd8162b8e3f1a2638324921c6d726b60cded8f`.

Source path: `GRWTSK/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Submonoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.ArchimedeanDensely` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean/declarations/instance--52d0075cf5492807f163136c.md) | 20 | `declaration-track:52d0075cf5492807f163136c9c01d47225e2b5388786c34dc26366366fc51ed3` |
| 2 | `lemma` | [wfDvdMonoid_iff_wellFounded_gt_on_v](../../../../mathematics/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean/declarations/wfdvdmonoid-iff-wellfounded-gt-on-v--35b211e0248ca9288840380d.md) | 35 | `result-track:35b211e0248ca9288840380d1c08f5cc2b20b2089028b5b93564ce8bad6cba2d` |
| 3 | `lemma` | [wellFounded_gt_on_v_iff_discrete_mrange](../../../../mathematics/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean/declarations/wellfounded-gt-on-v-iff-discrete-mrange--74dff41b5738c7ea8e64254e.md) | 41 | `result-track:74dff41b5738c7ea8e64254e9d3211fe00c10f3f051a787ac3b289a0f2899381` |
| 4 | `lemma` | [isPrincipalIdealRing_iff_not_denselyOrdered](../../../../mathematics/Algebra/Archimedean/Variant7c179dbc98c94ed51b5b0bbd107c40967885b595cff02b4dec8ae1337c1891e4.lean/declarations/isprincipalidealring-iff-not-denselyordered--56c85e5e97c31b327c5372ca.md) | 63 | `result-track:56c85e5e97c31b327c5372ca2ca30f0c34af8bc945e34a7cfb40b29e19e74790` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
