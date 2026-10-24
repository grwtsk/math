# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitMathlibZModDFTBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e42848d7b1ca5307566d7e4b5ce87cba209c4c52",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e42848d7b1ca5307566d7e4b5ce87cba209c4c52`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitFullFrequencyL2Reduction`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.Fourier.ZMod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stdAddCharResidueFourier_eq_mathlibDft_neg](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/stdaddcharresiduefourier-eq-mathlibdft-neg--ad89dbce48c7c4d45d6e0933.md) | 43 | `result-track:ad89dbce48c7c4d45d6e09338d7a7166dc987caf8b9171ce05e02f3f59689da6` |
| 2 | `theorem` | [sum_norm_sq_stdAddCharResidueFourier_eq_mathlibDft](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/sum-norm-sq-stdaddcharresiduefourier-eq-mathlibdft--0cbcb68558cdb505b46fbe93.md) | 62 | `result-track:0cbcb68558cdb505b46fbe93a23ad87bfa0902b2eb9840833490fce5059db8f3` |
| 3 | `def` | [UnnormalizedZModDFTParseval](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/unnormalizedzmoddftparseval--082e4ce4f9044ea7cb1c964d.md) | 80 | `declaration-track:082e4ce4f9044ea7cb1c964db11b928836e2950866b548c7f52bc6ef2d4116ff` |
| 4 | `theorem` | [stdAddCharSquareModulusParseval_iff_mathlibDft](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/stdaddcharsquaremodulusparseval-iff-mathlibdft--f81243f61b48bb4568c96325.md) | 89 | `result-track:f81243f61b48bb4568c963257ca3d580ccff96872889d20ac50eccee24f97388` |
| 5 | `def` | [mathlibDftParsevalToStdAddCharAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/mathlibdftparsevaltostdaddcharadapter--2fd38f18705960c8feab88a3.md) | 104 | `declaration-track:2fd38f18705960c8feab88a38642b84bc04cc3731db7daf74ac69cd94007dcac` |
| 6 | `structure` | [ToUnnormalizedZModDFTParsevalAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/tounnormalizedzmoddftparsevaladapter--c25ead5e6ff3efb6b4283901.md) | 111 | `declaration-track:c25ead5e6ff3efb6b428390184083eb6ce214e9f284ea3594bcf31a3e76433c9` |
| 7 | `def` | [stdAddCharParsevalToMathlibDftAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/stdaddcharparsevaltomathlibdftadapter--065e2846ff18b20194ba1b44.md) | 118 | `declaration-track:065e2846ff18b20194ba1b447a4758c14987c33f6ff7cdc2487b530930a0ddb5` |
| 8 | `structure` | [UnnormalizedZModDFTParsevalSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/unnormalizedzmoddftparsevalsourcedata--e52b33810f4b0dc08a950919.md) | 125 | `declaration-track:e52b33810f4b0dc08a95091987e4680f9c73da976418c893b3e85368b6c9b7c6` |
| 9 | `def` | [UnnormalizedZModDFTParsevalSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/unnormalizedzmoddftparsevalsource--653ecdc55cb3f2129439eed5.md) | 136 | `declaration-track:653ecdc55cb3f2129439eed5f1fcb2433c81df04dfaf1c6ef3ceaea0cb5d68dd` |
| 10 | `abbrev` | [UnnormalizedZModDFTParsevalSourceAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/declarations/unnormalizedzmoddftparsevalsourceadapter--ee735ee4dcc0a0c37dbe95f2.md) | 147 | `declaration-track:ee735ee4dcc0a0c37dbe95f2e864fd26abc16962286306a643e740639c2f15fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
