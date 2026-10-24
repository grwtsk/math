# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DifferentialRing.Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de8e3976bf6fba30c5f8f5ac316d7663b259b031",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de8e3976bf6fba30c5f8f5ac316d7663b259b031`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Differential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/differential--738a7064162d3ba6af43dc81.md) | 25 | `declaration-track:738a7064162d3ba6af43dc812c321404f3fd03b1892bde48e4fd42815f871563` |
| 2 | `def` | [delabDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/delabderiv--dc059cd37aa408153e4c9e9d.md) | 40 | `declaration-track:dc059cd37aa408153e4c9e9de65be0c0f8b2006662c1abbc4b13256999271e4e` |
| 3 | `class` | [DifferentialAlgebra](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/differentialalgebra--5236481073190d0a560f0122.md) | 50 | `declaration-track:5236481073190d0a560f012287aa620c1c2bafb11f409034891f83737a26b09d` |
| 4 | `lemma` | [algebraMap.coe_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/algebramap-coe-deriv--74f1d6ade85fa50446f6795e.md) | 57 | `result-track:74f1d6ade85fa50446f6795e7e9741c000de373a4f3a6c4e9cd44bccdb3fbe19` |
| 5 | `class` | [Differential.ContainConstants](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/differential-containconstants--661497ea9c1a6bb509739445.md) | 66 | `declaration-track:661497ea9c1a6bb509739445eb05dbe2c2f3427fd7dcc16e134d2d972b09e842` |
| 6 | `lemma` | [mem_range_of_deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/mem-range-of-deriv-eq-zero--6f3b4003935c6d8c267c00d0.md) | 71 | `result-track:6f3b4003935c6d8c267c00d0804be771be32c82fdfa9b66043cf325bafe0beb2` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/instance--9385c374131d800cedfba8c1.md) | 76 | `declaration-track:9385c374131d800cedfba8c128e845ee7f345c09fa4713654223782572f3f138` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/instance--63e15ba6cf3e22d10bd9fc4d.md) | 79 | `declaration-track:63e15ba6cf3e22d10bd9fc4dab9ea62be906f049ee26bd5836069ba4b5a93b1b` |
| 9 | `def` | [Differential.equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/differential-equiv--c205f2f7907bc3b1010315cf.md) | 84 | `declaration-track:c205f2f7907bc3b1010315cf186df7b03686e9b972967a5e21408b50bed21976` |
| 10 | `lemma` | [DifferentialAlgebra.equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variante308645777f6021c5bfff6499d8f13cd8a9dc178d63e36206a910caa1c91869c.lean/declarations/differentialalgebra-equiv--c77286984ab881fec346ec5e.md) | 92 | `result-track:c77286984ab881fec346ec5edbdc8a87c581bf4844fe6a99719b69c7e640f045` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
