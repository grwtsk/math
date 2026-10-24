# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionTopology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc236ab17fbec321430e53771571957e6960f2a3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc236ab17fbec321430e53771571957e6960f2a3`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.Algebra.DiscreteProjection`](../../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalTransport`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean/index.md) — import line 14; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalTopology](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/canonicaltopology--f4fd9d0c8c989235d7b3d93e.md) | 28 | `declaration-track:f4fd9d0c8c989235d7b3d93e65ebf630351657e985ee2d290d2b0d6fb0726767` |
| 2 | `def` | [seriesTopology](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/seriestopology--0dd3f32dfe05851c75d94f8e.md) | 34 | `declaration-track:0dd3f32dfe05851c75d94f8ecb3f60b38544e8423e681c1e0e1f2ada0fc49720` |
| 3 | `theorem` | [canonical_topologicalRing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/canonical-topologicalring--3b6ff7a26dfafaa64dae92aa.md) | 39 | `result-track:3b6ff7a26dfafaa64dae92aa056cec65b502589e9e295875c2a679e73cd77145` |
| 4 | `theorem` | [series_topologicalRing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/series-topologicalring--af47c5cc5da1efb09283feab.md) | 46 | `result-track:af47c5cc5da1efb09283feab69039b4e2401c34e8a2d9c0ba9189de542970b72` |
| 5 | `theorem` | [adicSeries_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/adicseries-continuous--eddeb28a17f1876bd3b6c806.md) | 53 | `result-track:eddeb28a17f1876bd3b6c8064c89eeea6fd1f4d4ffb52ce19290bf7c4f407c7a` |
| 6 | `theorem` | [inverse_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/inverse-projection--b2f07c66dedb39c10583e5af.md) | 63 | `result-track:b2f07c66dedb39c10583e5af91867ee99e89280404d49128a95c4974beea7504` |
| 7 | `theorem` | [adicSeries_symm_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/adicseries-symm-continuous--dd97304893f08dc9b7604fd0.md) | 75 | `result-track:dd97304893f08dc9b7604fd0a9affcb3dbb688f6a570b846bdbb1c5d93b7b48f` |
| 8 | `def` | [adicSeriesHomeomorph](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/adicserieshomeomorph--8d940281ffc5f2642f7f1e1c.md) | 86 | `declaration-track:8d940281ffc5f2642f7f1e1c51371d62379c317461b46877f3eead78562cd9a9` |
| 9 | `theorem` | [adicSeriesHomeomorph_apply](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/adicserieshomeomorph-apply--6e5ac90cefec4abe2e1cb3d0.md) | 94 | `result-track:6e5ac90cefec4abe2e1cb3d0bbf0d2a251b9a45bbdaa9c4350f6dd37b5b1edee` |
| 10 | `theorem` | [canonicalMap_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/canonicalmap-continuous--5a420b3fa11fa97557a492ec.md) | 101 | `result-track:5a420b3fa11fa97557a492ec15055d594c3c3ec3f346db45ce6e3dfd4cc51bc8` |
| 11 | `theorem` | [seriesMap_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/seriesmap-continuous--a643dff6a7212cbec75e2367.md) | 110 | `result-track:a643dff6a7212cbec75e2367516696a87c921d8529b0ce870a4a4fe841e648a4` |
| 12 | `theorem` | [canonical_fiber_open](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/canonical-fiber-open--42e0175522844045a1571698.md) | 119 | `result-track:42e0175522844045a157169868adb460af003d2b14cec62524f99451dd6e93f0` |
| 13 | `theorem` | [canonical_fiber_closed](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/canonical-fiber-closed--eb3720df47a1a30f29ff99ce.md) | 125 | `result-track:eb3720df47a1a30f29ff99cef685b482d4834c0227bb6d1f1d2d73dd4a371573` |
| 14 | `theorem` | [congruence_iff_parameter_dvd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/congruence-iff-parameter-dvd--f9f2b62ea252a903c3606bec.md) | 132 | `result-track:f9f2b62ea252a903c3606becf7da1e51d5a55e4bd5d1b0afc8c4184072fd3cca` |
| 15 | `def` | [PrimitiveAdditiveTriple.freyCanonicalSectionHomeomorph](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/primitiveadditivetriple-freycanonicalsectionhomeomorph--984e47a57a68fb16286713ad.md) | 150 | `declaration-track:984e47a57a68fb16286713ad09ecf66d10cbfc315b07ddd14a097521049a997b` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyCanonicalSectionHomeomorph_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/declarations/primitiveadditivetriple-freycanonicalsectionhomeomorph-agrees--7732930493fd52e86b1a1de9.md) | 160 | `result-track:7732930493fd52e86b1a1de97610a1c503ef840190bdd955167a225405a89981` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
