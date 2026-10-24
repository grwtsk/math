# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Tail.Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b11766ed503a6d54a8e0b5c7fb3da2f5940ea788",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b11766ed503a6d54a8e0b5c7fb3da2f5940ea788`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Upper` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailMaj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/declarations/tailmaj--4905b47af9bed0e8c542809e.md) | 35 | `declaration-track:4905b47af9bed0e8c542809e9157af1b8e274cd1b7235175975904246b966cc1` |
| 2 | `lemma` | [tailMaj_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/declarations/tailmaj-nonneg--802ec90af2e2c7c77f240cbe.md) | 37 | `result-track:802ec90af2e2c7c77f240cbebf7666bf1a00862bfa392486306823078b0b6179` |
| 3 | `lemma` | [summable_tailMaj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/declarations/summable-tailmaj--7fbf18edde6e113e5c9085d0.md) | 39 | `result-track:7fbf18edde6e113e5c9085d0dc4c21ec1b82400f6113485f317570f051a7922b` |
| 4 | `def` | [tailMajFrom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/declarations/tailmajfrom--34b871fc72dfbdaa5cb7fe47.md) | 47 | `declaration-track:34b871fc72dfbdaa5cb7fe470868dfb214f4b5d93f7940ac2915bc0ad748d064` |
| 5 | `lemma` | [tailMajFrom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/declarations/tailmajfrom-nonneg--3c11315843ad3509f66f57f3.md) | 49 | `result-track:3c11315843ad3509f66f57f3a8fda3cb85c095ad761d22a81150fda18a683f7a` |
| 6 | `lemma` | [tailMajFrom_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/declarations/tailmajfrom-le--ceb05eff9e9c8280025142ab.md) | 52 | `result-track:ceb05eff9e9c8280025142ab0079e6e779800e2db9b9765d8264a0de29d816e3` |
| 7 | `lemma` | [summable_tailMajFrom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/declarations/summable-tailmajfrom--a0f05c1e8ee9c70f2723c93c.md) | 55 | `result-track:a0f05c1e8ee9c70f2723c93c793fa3ec15c64e72d8ff1fa4c5990e1ed60460eb` |
| 8 | `lemma` | [tsum_tailMajFrom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/declarations/tsum-tailmajfrom--f15f8cfc7f4e5098d21b95e4.md) | 59 | `result-track:f15f8cfc7f4e5098d21b95e4a2cdd9926077fbc7bcc8051dc08667312b3e7217` |
| 9 | `theorem` | [Fmaj_tail_small](../../../../../mathematics/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/declarations/fmaj-tail-small--6bd8917580738336b7c036a7.md) | 70 | `result-track:6bd8917580738336b7c036a75522259ccbf5011df8ab303719b96bfedc959417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
