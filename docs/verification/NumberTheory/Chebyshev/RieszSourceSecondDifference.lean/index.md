# Verification target: GRWTSK.NumberTheory.Chebyshev.RieszSourceSecondDifference

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43128d83d22f0fe4d49bf12917ac56024bbcb307",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43128d83d22f0fe4d49bf12917ac56024bbcb307`.

Source path: `GRWTSK/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.GeneralTentExplicitFormula`](../../../../mathematics/NumberTheory/Chebyshev/GeneralTentExplicitFormula.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentResidueContributions`](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail`](../../../../mathematics/NumberTheory/Zeta/Riemann/FirstRieszZeroTail.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tentMangoldt_eq_prefix](../../../../mathematics/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/declarations/tentmangoldt-eq-prefix--5d23b9300cbd17ac38290e00.md) | 27 | `result-track:5d23b9300cbd17ac38290e0024fa7b164270f9d6cd8585a2ce0bf231a4c5329c` |
| 2 | `theorem` | [fullRieszZeroValue_second_difference](../../../../mathematics/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/declarations/fullrieszzerovalue-second-difference--df200e2470657b7ecb810e4f.md) | 47 | `result-track:df200e2470657b7ecb810e4ffffcf4013db311bd63dea11fc7f8c5feaeaaf497` |
| 3 | `theorem` | [firstRieszPrefix_full_zero_second_difference](../../../../mathematics/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/declarations/firstrieszprefix-full-zero-second-difference--3581d14b819713b572c2f46e.md) | 88 | `result-track:3581d14b819713b572c2f46e8a38f10fd5e17b45576830b5a0383248b197b354` |
| 4 | `def` | [firstRieszSourceDefect](../../../../mathematics/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/declarations/firstrieszsourcedefect--420f3d5b6d402e355b7d3a19.md) | 110 | `declaration-track:420f3d5b6d402e355b7d3a1981c4a90351973b6dcb5bbb526e67b4f7bd4fa0c3` |
| 5 | `theorem` | [firstRieszSourceDefect_second_difference](../../../../mathematics/NumberTheory/Chebyshev/RieszSourceSecondDifference.lean/declarations/firstrieszsourcedefect-second-difference--bb08e6c0f19745640e387564.md) | 115 | `result-track:bb08e6c0f19745640e387564e3c3c738d909e99ee3c69f52066f8a559e68552b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
