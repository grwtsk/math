# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaTranscript

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73656fd9a7ebe40dddd45ab82240df2e51defa6c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73656fd9a7ebe40dddd45ab82240df2e51defa6c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaCenterEvaluation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Transcript](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/transcript--540b744cea8a8d08f2fd34aa.md) | 26 | `declaration-track:540b744cea8a8d08f2fd34aa1ef860a615599d285b71d824d2d07e0a85aa72c0` |
| 2 | `def` | [canonicalTranscript](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/canonicaltranscript--7b1c492c88d6416f4d470d99.md) | 31 | `declaration-track:7b1c492c88d6416f4d470d990bb8dd2598a24c9440851b71bd8bcc56bad78218` |
| 3 | `def` | [checkPrefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/checkprefix--190a4ef853c984bb3d5e4c18.md) | 37 | `declaration-track:190a4ef853c984bb3d5e4c18d72aa0b13fddde343c1e197c4086fd832faf487f` |
| 4 | `def` | [checkTerminal](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/checkterminal--c578fec6ce920eb41e0284b3.md) | 43 | `declaration-track:c578fec6ce920eb41e0284b3cf6c0ebf9b76928b2c28a28d76b675d4e541dfbd` |
| 5 | `def` | [checkGeometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/checkgeometry--aeeec1bb92442bba2cc5f56e.md) | 47 | `declaration-track:aeeec1bb92442bba2cc5f56e7c9a517b7ced8c316ee2e8de4fa531c19ebc18d1` |
| 6 | `def` | [recordLogValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/recordlogvalue--d61880a32b1c777829406cb0.md) | 51 | `declaration-track:d61880a32b1c777829406cb097d38dce617a27937b60759d4ade29f775939b66` |
| 7 | `def` | [recordLogError](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/recordlogerror--d767a0a76bcf61453ed309a9.md) | 54 | `declaration-track:d767a0a76bcf61453ed309a9fac0700d09c06fc5da7a10ce05bec8599ce8b680` |
| 8 | `def` | [assemble](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/assemble--9f9ee7db03a4ef46ee0c88d9.md) | 60 | `declaration-track:9f9ee7db03a4ef46ee0c88d9bef736f979a2f66da8b0d21630804c2bc7882ae9` |
| 9 | `def` | [checkFinal](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/checkfinal--7d2c2d793312fcee09164525.md) | 76 | `declaration-track:7d2c2d793312fcee091645255ebf4e4a3ec619a023e4819169532ba0e68315db` |
| 10 | `theorem` | [checkPrefix_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/checkprefix-iff--d1729325efe4b1d746707bad.md) | 81 | `result-track:d1729325efe4b1d746707bad2b0f55d8a17237f5380912acf666c616bcde8462` |
| 11 | `theorem` | [checkTerminal_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/checkterminal-iff--2836ce14b8a1a484da0833bc.md) | 88 | `result-track:2836ce14b8a1a484da0833bc272e567e4ee9e7824e3a8f696e80314dd48c912c` |
| 12 | `theorem` | [checkGeometry_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/checkgeometry-iff--5da86775c9bcf336fb0fbe8a.md) | 94 | `result-track:5da86775c9bcf336fb0fbe8a2a19db3241a4d0e4cb4a6ee4c46d89bc2abf52b1` |
| 13 | `theorem` | [checkFinal_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/checkfinal-iff--6b4c03896f48af5964ae2545.md) | 99 | `result-track:6b4c03896f48af5964ae2545c43b2b56fd5b2ebc20407411c4248872ec051e15` |
| 14 | `theorem` | [assemble_canonical](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/assemble-canonical--49e786ecb49a20dc2de8d780.md) | 107 | `result-track:49e786ecb49a20dc2de8d78020aa30aec859614afddf2d25ee4926c4c6c76740` |
| 15 | `theorem` | [transcript_eq_canonical](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/transcript-eq-canonical--a5a2a3627edbddc8087dab2e.md) | 111 | `result-track:a5a2a3627edbddc8087dab2e471bdd4d3c77d03dd211d58baa7ddd102fc26964` |
| 16 | `theorem` | [verify_of_checks](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/verify-of-checks--f1c55f832ed091db508e0649.md) | 125 | `result-track:f1c55f832ed091db508e0649225add4065432f56e7ef49fc7096d7e3c3c83e43` |
| 17 | `theorem` | [verify_iff_exists_transcript](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaTranscript.lean/declarations/verify-iff-exists-transcript--f3e5ea3117212020fdbf7d32.md) | 150 | `result-track:f3e5ea3117212020fdbf7d328561ca70312461fcdeb71fda3b5db0e46c3e59ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
