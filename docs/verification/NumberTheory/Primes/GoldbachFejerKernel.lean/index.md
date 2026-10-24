# Verification target: GRWTSK.NumberTheory.Primes.GoldbachFejerKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f97b459674f6857693fdd2f0fa1e4c5b736da17b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachFejerKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f97b459674f6857693fdd2f0fa1e4c5b736da17b`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachFejerKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachFejerKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation`](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.Norm` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachSingularFrequencyFiber](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachsingularfrequencyfiber--c85b98cc6a5c9b5a03a7e9c8.md) | 40 | `declaration-track:c85b98cc6a5c9b5a03a7e9c87940401971a4964e81abda51b4ef0ce6eb323af7` |
| 2 | `def` | [goldbachTriangularFrequencyWeight](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachtriangularfrequencyweight--19614c4c0cc57727c10d2160.md) | 46 | `declaration-track:19614c4c0cc57727c10d2160bb3bc31248fa9f87e0345dcd5bf2fd85987f6952` |
| 3 | `theorem` | [mem_goldbachSingularFrequencyFiber](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/mem-goldbachsingularfrequencyfiber--0c8d79a040b03614ee5fc6d6.md) | 51 | `result-track:0c8d79a040b03614ee5fc6d634e242a2c93350ccee7b21e4e984f37757321f9b` |
| 4 | `theorem` | [goldbachSingularPairFrequency_mem_Icc](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachsingularpairfrequency-mem-icc--5ef91caf3ec03c2f7587e322.md) | 63 | `result-track:5ef91caf3ec03c2f7587e3222821d5bbd114cc1fcba8b8c0749c04cdbdb02111` |
| 5 | `theorem` | [goldbachSingularFrequencyFiber_eq_empty_of_not_mem](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachsingularfrequencyfiber-eq-empty-of-not-mem--f3dd25a9bab4c98cd1ee69ae.md) | 74 | `result-track:f3dd25a9bab4c98cd1ee69aeecbfc2f2cee0e7f8841e26a3394079a07986219a` |
| 6 | `theorem` | [goldbachTriangularFrequencyWeight_formula](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachtriangularfrequencyweight-formula--e9251120240125facc07148b.md) | 90 | `result-track:e9251120240125facc07148bbfd8f1923232b49a865ffb5e77d276bed4db8c71` |
| 7 | `theorem` | [goldbachTriangularFrequencyWeight_neg](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachtriangularfrequencyweight-neg--704deb2a3d24de64b949a2bc.md) | 202 | `result-track:704deb2a3d24de64b949a2bc8b06edfa0414d5bcd5fb03b41f68bc1e3cadee54` |
| 8 | `theorem` | [goldbachTriangularFrequencyWeight_zero](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachtriangularfrequencyweight-zero--e96e72c6d61b7ae8d5299780.md) | 212 | `result-track:e96e72c6d61b7ae8d529978079d06111cd971a00fd7059d539dd103814a68d4d` |
| 9 | `theorem` | [goldbachFiniteSingularKernel_eq_triangularFrequencySum](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachfinitesingularkernel-eq-triangularfrequencysum--cd07f2f4bf74a963307ab026.md) | 218 | `result-track:cd07f2f4bf74a963307ab02608eaa8b72187882bcf6571378047e4f307a36e6b` |
| 10 | `theorem` | [unitCharacter_neg_conj](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/unitcharacter-neg-conj--4d330c76f9535e63e565f7d3.md) | 261 | `result-track:4d330c76f9535e63e565f7d3afa0522feb851fd7baf1640713c5f0f3c1136a91` |
| 11 | `theorem` | [goldbachIntegerExponentialKernel_conj_eq_phase_mul](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachintegerexponentialkernel-conj-eq-phase-mul--c1f5d0cec34063b5e87a4fdc.md) | 269 | `result-track:c1f5d0cec34063b5e87a4fdc1720ca954a37662f359f5f3b42c409a7ec446038` |
| 12 | `def` | [goldbachFejerKernel](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachfejerkernel--a7d3be2aadc9c9cebee148a0.md) | 304 | `declaration-track:a7d3be2aadc9c9cebee148a016e44edbc5a9d61c6454f1bca25545b870c6cead` |
| 13 | `theorem` | [goldbachFiniteSingularKernel_eq_fejer](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachfinitesingularkernel-eq-fejer--abc603744f189679b33dadf8.md) | 308 | `result-track:abc603744f189679b33dadf8605d48cadde07abf72b6bbbe232b377b1f191c89` |
| 14 | `theorem` | [goldbachFiniteSingularKernel_im_zero](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachfinitesingularkernel-im-zero--dcd3af85d5be7a31705d61e1.md) | 324 | `result-track:dcd3af85d5be7a31705d61e16893b5f9201aa364ca5dec415f4c2aedd7153c3d` |
| 15 | `theorem` | [goldbachFiniteSingularKernel_re_eq_fejer](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachfinitesingularkernel-re-eq-fejer--e301d4c37d490de9321598cc.md) | 331 | `result-track:e301d4c37d490de9321598ccf47e8f1b7fa3745d194d8da123c969687ce37a21` |
| 16 | `theorem` | [goldbachFejerKernel_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachfejerkernel-nonneg--99ee873c40af08fca32361c6.md) | 339 | `result-track:99ee873c40af08fca32361c69e8d245944efcff3809ed921057a73496a7339f9` |
| 17 | `theorem` | [goldbachFiniteSingularKernel_re_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/declarations/goldbachfinitesingularkernel-re-nonneg--9d17acebd870a0ff9d1d355d.md) | 346 | `result-track:9d17acebd870a0ff9d1d355d7e43fdb9135ae88ca8edea77cf2dec453b6e30d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
