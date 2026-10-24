# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyProjectiveHeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d719bffacefa1187b1292d7e3f024a917f8194e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d719bffacefa1187b1292d7e3f024a917f8194e`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortBounds`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortBounds.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.NumberTheory.Height.NumberField` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PrimitiveAdditiveTriple.threePort_gcd_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/primitiveadditivetriple-threeport-gcd-eq--0bb95b94d81223c93b076932.md) | 16 | `result-track:0bb95b94d81223c93b076932317a5496c6b3709e2e4ac696211029d97edfeb70` |
| 2 | `lemma` | [frey_iSup2_abs](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/frey-isup2-abs--a5f5234b644212b458edca51.md) | 29 | `result-track:a5f5234b644212b458edca51c34184149b2b02b5f2c285a46c96c052200c798b` |
| 3 | `lemma` | [frey_iSup3_abs](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/frey-isup3-abs--3dcb68f7bc008029df93888a.md) | 40 | `result-track:3dcb68f7bc008029df93888a965a3efe825aac14150784c3bbfff45dd50ccc86` |
| 4 | `lemma` | [frey_gcd_eq_one_of_combination](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/frey-gcd-eq-one-of-combination--5aaac8f0553a6cdad1e737ea.md) | 54 | `result-track:5aaac8f0553a6cdad1e737eaa49b753b4b37499f27d2a10ad4ee23d2198eca69` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.frey_logHeight_lower_of_primitive](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/primitiveadditivetriple-frey-logheight-lower-of-primitive--0dd491f2ec4d3e2dea2e26b5.md) | 67 | `result-track:0dd491f2ec4d3e2dea2e26b56c6d81e91c208d3fcb2768198ef0c57a4eaaeaf3` |
| 6 | `theorem` | [PrimitiveAdditiveTriple.freyAffinePortEval_rat_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/primitiveadditivetriple-freyaffineporteval-rat-smul--ca8543f232d9fa3a2292a01b.md) | 100 | `result-track:ca8543f232d9fa3a2292a01bb90ff32562021b02a743cc3f494b7ab40c7a58d1` |
| 7 | `theorem` | [PrimitiveAdditiveTriple.frey_logHeight_lower_of_representative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/primitiveadditivetriple-frey-logheight-lower-of-representative--c3dbcc5e24f53906562e780f.md) | 110 | `result-track:c3dbcc5e24f53906562e780fddc065ebefac262e601213d666027c30f5aec179` |
| 8 | `theorem` | [PrimitiveAdditiveTriple.frey_observation_logHeight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/primitiveadditivetriple-frey-observation-logheight--b27d6df77182dc4e3560435c.md) | 124 | `result-track:b27d6df77182dc4e3560435cf27c3749e755d42f78e6e2fbd6159ee88ee195ee` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.frey_triple_logHeight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/primitiveadditivetriple-frey-triple-logheight--88158d18623f7531a0a25b46.md) | 142 | `result-track:88158d18623f7531a0a25b4605b8822fb023a3d2440931b447e6e184e3931398` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.frey_decoding_logHeight_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyProjectiveHeight.lean/declarations/primitiveadditivetriple-frey-decoding-logheight-bounds--ded03fa1c99f24a7ab52a2a5.md) | 162 | `result-track:ded03fa1c99f24a7ab52a2a581b25d86a236af426c6242800f6b10ef21873922` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
