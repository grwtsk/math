# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimePowerLogSums.Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac55ce5c47e9dce6bb1db4c1bcc9d814b42b6ef5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac55ce5c47e9dce6bb1db4c1bcc9d814b42b6ef5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ChebyshevFunctions` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePowerPairsUpTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/declarations/primepowerpairsupto--8f18b467628b466b237e76de.md) | 16 | `declaration-track:8f18b467628b466b237e76de5f1f55150c8f7c870ef9022d69ca6d682e4c6c77` |
| 2 | `theorem` | [mem_primePowerPairsUpTo_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/declarations/mem-primepowerpairsupto-iff--b0daffb8fecb5ef06de96edf.md) | 24 | `result-track:b0daffb8fecb5ef06de96edfe484622eb262ef16039b82e6433a8bd4d5c8c7a6` |
| 3 | `def` | [chebyshevPsi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/declarations/chebyshevpsi--0a52d12adec9ce7ee9ed1938.md) | 59 | `declaration-track:0a52d12adec9ce7ee9ed193808fafc25e81321708f0613b228b962da5b42a0bb` |
| 4 | `theorem` | [chebyshevPsi_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/declarations/chebyshevpsi-nonneg--55e3568d4c243d947764de06.md) | 63 | `result-track:55e3568d4c243d947764de06e53e6a96c91bc8cbc21e01fd8300105a3a5e205a` |
| 5 | `theorem` | [chebyshevPsi_eq_sum_log_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/declarations/chebyshevpsi-eq-sum-log-prime--49d5dc71a1ba6bf762c71152.md) | 75 | `result-track:49d5dc71a1ba6bf762c71152f6175ad6f8b9ca6c99f4b1aa7c546fdf44b89110` |
| 6 | `theorem` | [chebyshevTheta_le_chebyshevPsi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/declarations/chebyshevtheta-le-chebyshevpsi--28b01e36ea1e31ffbd7a4b14.md) | 97 | `result-track:28b01e36ea1e31ffbd7a4b140d06f1e7885891c42acf03dd9172d32bb63be8f7` |
| 7 | `theorem` | [chebyshevPsi_le_sum_log_all_prime_powers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/declarations/chebyshevpsi-le-sum-log-all-prime-powers--25015eb5fbe306d9fe950c3e.md) | 131 | `result-track:25015eb5fbe306d9fe950c3e195346c707cfe590b64da6eea35c1c55865537bf` |
| 8 | `def` | [ChebyshevPsiUpperBoundTarget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/declarations/chebyshevpsiupperboundtarget--6de50bbee54ad764e5d926d5.md) | 184 | `declaration-track:6de50bbee54ad764e5d926d54576440a52357eda53b218f3b3f95d7a9c1753f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
