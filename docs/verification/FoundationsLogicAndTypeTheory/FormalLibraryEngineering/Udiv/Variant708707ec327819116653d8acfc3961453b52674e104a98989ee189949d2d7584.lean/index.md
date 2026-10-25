# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Udiv.Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c180a081845aaf5750d90c5eb62e55871e2cd50",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c180a081845aaf5750d90c5eb62e55871e2cd50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denote_blastShiftConcat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/denote-blastshiftconcat--74fe6e706bfbbb9f78935c62.md) | 38 | `result-track:74fe6e706bfbbb9f78935c62c85aa06e9a942ac4c605c36d0d15078fb246dffb` |
| 2 | `theorem` | [denote_blastShiftConcat_eq_shiftConcat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/denote-blastshiftconcat-eq-shiftconcat--db46445db75f3db67938d887.md) | 53 | `result-track:db46445db75f3db67938d887218464bd6a75b242708faf96f160723327f5ef19` |
| 3 | `theorem` | [blastDivSubtractShift_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/blastdivsubtractshift-denote-mem-prefix--22311fe390485e7b341b18db.md) | 66 | `result-track:22311fe390485e7b341b18db4d23260c618f896be1b38d46c76f82b3fbbd2295` |
| 4 | `theorem` | [denote_blastDivSubtractShift_q](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/denote-blastdivsubtractshift-q--0887ae8a64a4a20a64c59682.md) | 82 | `result-track:0887ae8a64a4a20a64c5968236b137247fa14792188d7654292cd0f1dbefb67a` |
| 5 | `theorem` | [denote_blastDivSubtractShift_r](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/denote-blastdivsubtractshift-r--46368337976ae5c66bc3422c.md) | 176 | `result-track:46368337976ae5c66bc3422ce9468b9fcf2568f66db59185f02aae4465507784` |
| 6 | `theorem` | [denote_blastDivSubtractShift_wn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/denote-blastdivsubtractshift-wn--594cfcd44a9f860c0129aaa7.md) | 302 | `result-track:594cfcd44a9f860c0129aaa7f9628b4b53b296a0748d683d953b58274279150f` |
| 7 | `theorem` | [denote_blastDivSubtractShift_wr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/denote-blastdivsubtractshift-wr--b7caa3a941fcbc79500dc929.md) | 314 | `result-track:b7caa3a941fcbc79500dc9294f6c23209b97f1af38acc94d2a4d6e82e4295fc1` |
| 8 | `theorem` | [denote_go_eq_divRec_q](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/denote-go-eq-divrec-q--8e94200dc2c9715bc42a3014.md) | 325 | `result-track:8e94200dc2c9715bc42a30147ad98b965ac9d1ecc967bcaba789fb9422881239` |
| 9 | `theorem` | [denote_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/denote-go--e5f83561ed0c905f62bcfeff.md) | 401 | `result-track:e5f83561ed0c905f62bcfeff4b885d89444ec54804ce3455f48244840ad1fdca` |
| 10 | `theorem` | [go_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/go-denote-mem-prefix--b5de1f4291d60a7fb9775f55.md) | 426 | `result-track:b5de1f4291d60a7fb9775f5570b884fd833d159315f6790c151f314e43dfb436` |
| 11 | `theorem` | [denote_blastUdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant708707ec327819116653d8acfc3961453b52674e104a98989ee189949d2d7584.lean/declarations/denote-blastudiv--f631ccce932c2b37f9137fcb.md) | 444 | `result-track:f631ccce932c2b37f9137fcb1e2a2fb5f2886a0b30ddd6921c14aa7b2eb757a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
