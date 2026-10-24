# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Fourier.Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fa290aef231ee973c8884e28162f2d07ba819dd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fa290aef231ee973c8884e28162f2d07ba819dd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 10; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Sobolev` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/instance--a9f1896ac18fd1888e63390e.md) | 19 | `declaration-track:a9f1896ac18fd1888e63390e3ae422df4be6f048426e35b0520bbd2500ebb41d` |
| 2 | `theorem` | [nnnorm_eq_of_mem_circle](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/nnnorm-eq-of-mem-circle--b53ab7d68d70cd387a23820e.md) | 24 | `result-track:b53ab7d68d70cd387a23820ed54205f36ff277421385737c0f5f0353ef707d25` |
| 3 | `theorem` | [nnnorm_circle_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/nnnorm-circle-smul--c4af3b1a0fb54a8a14f5285b.md) | 27 | `result-track:c4af3b1a0fb54a8a14f5285b826b9b71dce0215a530880e34be9d01d505d6de8` |
| 4 | `def` | [e](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/e--c5e840f3b3ff8999ebc65c3f.md) | 30 | `declaration-track:c5e840f3b3ff8999ebc65c3fa840969832ca33dbcefe4a2ea0e1afc10a88e5a1` |
| 5 | `lemma` | [e_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/e-apply--3aeb3831dc8811b792a80e96.md) | 35 | `result-track:3aeb3831dc8811b792a80e96888baec513f7ba1aaa804ebd46c881c8f0a863d8` |
| 6 | `theorem` | [hasDerivAt_e](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/hasderivat-e--6bf170738315e10492d73571.md) | 37 | `result-track:6bf170738315e10492d73571d35681f65100468898b0540c3b43d15d756b754f` |
| 7 | `lemma` | [fourierIntegral_deriv_aux2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/fourierintegral-deriv-aux2--fac902f12123e06aec28431d.md) | 44 | `result-track:fac902f12123e06aec28431df57f9ae81f1955de27cad6fd1a4c09f903910910` |
| 8 | `lemma` | [F_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/f-neg--c7e288cd21e9ad0f43c5812f.md) | 48 | `result-track:c7e288cd21e9ad0f43c5812f9af3be33a088a884dfa4f81ac68a3793b4fc4ded` |
| 9 | `lemma` | [F_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/f-add--7fd6d146f7df6c6f9d873d34.md) | 51 | `result-track:7fd6d146f7df6c6f9d873d34957117bbd9e1b4103cba0b07d17f6f32c4b00520` |
| 10 | `lemma` | [F_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/f-sub--2ef5b6011c695574d2b563d7.md) | 57 | `result-track:2ef5b6011c695574d2b563d70dc2867e83623436a55c603621e9d8ba19229d19` |
| 11 | `lemma` | [F_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/f-mul--1c300c3708a8f20a387a0464.md) | 61 | `result-track:1c300c3708a8f20a387a046473055c291ba0b7aad2de57836938d02cbfa1e985` |
| 12 | `theorem` | [fourierIntegral_self_add_deriv_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/fourierintegral-self-add-deriv-deriv--7885ed61f6172b33a976af12.md) | 67 | `result-track:7885ed61f6172b33a976af12b09b7debcef9b36019e05759db2e0d59f505425b` |
| 13 | `lemma` | [deriv_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantdf84be9b3e83c0dc656f6950952d5c20cbf3db2da798a377930062950a0a372a.lean/declarations/deriv-ofreal--bd8fc88fab1a04c6460af43a.md) | 77 | `result-track:bd8fc88fab1a04c6460af43ac95aa0dacf77bdc671f1b12713f8b5fad9f187f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
