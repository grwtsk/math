# Verification target: GRWTSK.NumberTheory.SourceActualEulerPotentialZetaPhaseNative02.Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "939979507ea39302016dafea8e250276810b747b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `939979507ea39302016dafea8e250276810b747b`.

Source path: `GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEulerPotentialPhase` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeff](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/declarations/coeff--cb5506372b69532c950ea1cf.md) | 25 | `declaration-track:cb5506372b69532c950ea1cfd8f86764565c9e8452b6ff6ff743855734c58354` |
| 2 | `theorem` | [coeff_norm_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/declarations/coeff-norm-le--61db07ea4fa15e5c9b0ecf51.md) | 28 | `result-track:61db07ea4fa15e5c9b0ecf5193fe9c69bf6c51727b50e3b1a6379686b2539e99` |
| 3 | `def` | [actualFullPrimeLogPotential](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/declarations/actualfullprimelogpotential--1228ab0842f41bcc16ef23dd.md) | 40 | `declaration-track:1228ab0842f41bcc16ef23ddae9434c1da58ac421f2d3ae8ac10ab0bbedf4884` |
| 4 | `theorem` | [actualFullPrimeLogPotential_summable](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/declarations/actualfullprimelogpotential-summable--b00c29baa32fbda7dd81d31c.md) | 43 | `result-track:b00c29baa32fbda7dd81d31c99a382a2a552d0f92e2288ca7ab5b53bba3037bc` |
| 5 | `theorem` | [actualFullPrimeLogPotential_exp_eq_zeta](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/declarations/actualfullprimelogpotential-exp-eq-zeta--794063e80a75e15627512762.md) | 49 | `result-track:794063e80a75e156275127622cea1356570a2aa0c28fd6ee37f03fe0315bf352` |
| 6 | `theorem` | [term_eq_exp](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/declarations/term-eq-exp--41e514645e9ab437620dcb15.md) | 59 | `result-track:41e514645e9ab437620dcb157a1e190124eb7f70cf8267b0168ecaa2162b29b2` |
| 7 | `theorem` | [actualClosedPrimeLogPotential_tendsto_full](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/declarations/actualclosedprimelogpotential-tendsto-full--7a879cf22e63775f1903807b.md) | 73 | `result-track:7a879cf22e63775f1903807b631a71957bfb46df3073dacd6c06eb8490630e33` |
| 8 | `theorem` | [actualFullPrimeLogPotential_re_negative](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/declarations/actualfullprimelogpotential-re-negative--6b6505056e4e13de3b37a4d5.md) | 87 | `result-track:6b6505056e4e13de3b37a4d55c3e88f81637b92415b01aca1790a9c83fef6b11` |
| 9 | `theorem` | [actualZeta_norm_at_prime_two_phase_le](../../../../mathematics/NumberTheory/SourceActualEulerPotentialZetaPhaseNative02/Variantddc34652d213ffc4c49a34174da858ccc98a8be57fd357952a1cb618cf8ce5d6.lean/declarations/actualzeta-norm-at-prime-two-phase-le--0e2f97171196d3c42fc2bea5.md) | 100 | `result-track:0e2f97171196d3c42fc2bea5a7d2ec58929b59a23abb5902bb926b7eea641e2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
