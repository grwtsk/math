# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StreamEncoding.Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "045e60811e8a43da264251a3f41ef8dd542d3f22",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `045e60811e8a43da264251a3f41ef8dd542d3f22`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.Modularity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matrixAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean/declarations/matrixatoms--40b3f9bc5d8f749df5cc1896.md) | 7 | `declaration-track:40b3f9bc5d8f749df5cc18961062668672af11154a26e19d19045e589e7048df` |
| 2 | `def` | [primeFactorsCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean/declarations/primefactorscore--e900307ad0d5c387e4a8c35b.md) | 12 | `declaration-track:e900307ad0d5c387e4a8c35b31238d09538be35ac1e23a128da29c8d79403970` |
| 3 | `structure` | [BinaryLogicTreeStreamPlan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean/declarations/binarylogictreestreamplan--872c0357631b327f394c9dd2.md) | 16 | `declaration-track:872c0357631b327f394c9dd2970629883ce1727a69e4a9d7721c4a0842692430` |
| 4 | `def` | [streamPlan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean/declarations/streamplan--c67e721de37c1ef44e0ed189.md) | 25 | `declaration-track:c67e721de37c1ef44e0ed1894e724434eb997658b3adae1542fecff6afe0a3e8` |
| 5 | `theorem` | [streamPlan_preserves_matrix_atoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean/declarations/streamplan-preserves-matrix-atoms--fc465f17d9ae82846d9b1373.md) | 41 | `result-track:fc465f17d9ae82846d9b13737c941dff3d5655dad4ee0181697e6e9a2c2092ef` |
| 6 | `theorem` | [streamPlan_primeFactors_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean/declarations/streamplan-primefactors-visible--3a1db6b008467219f1d2c1fd.md) | 46 | `result-track:3a1db6b008467219f1d2c1fdb12b2fb616565230efee3904600dbadf518ed193` |
| 7 | `theorem` | [streamPlan_topologyPrime_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamEncoding/Variantea91ad2e13381b5e684f322c687b236211aa104fdf9da8fadb11f20039e40ae1.lean/declarations/streamplan-topologyprime-visible--ebb740c9407b5332cfaaed30.md) | 52 | `result-track:ebb740c9407b5332cfaaed300633d72edf342dd42ac23fdd6ed6ae894e89a931` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
