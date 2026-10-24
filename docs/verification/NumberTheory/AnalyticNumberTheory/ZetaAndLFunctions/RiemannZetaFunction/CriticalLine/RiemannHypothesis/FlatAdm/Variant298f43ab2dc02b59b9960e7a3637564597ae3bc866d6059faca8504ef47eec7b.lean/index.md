# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FlatAdm.Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55f571e40a0700960db0c211e4247c0ae9c16ac6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55f571e40a0700960db0c211e4247c0ae9c16ac6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.WindowCore` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.Taper` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [admWindow_taperPhi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/declarations/admwindow-taperphi--8ae344df387e49b9541d4f69.md) | 29 | `result-track:8ae344df387e49b9541d4f690e1aa0ee713b3b0f1c03b54be394a59390dbcdc8` |
| 2 | `theorem` | [admWindow_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/declarations/admwindow-taper--24bb5d33f988e604a2924304.md) | 47 | `result-track:24bb5d33f988e604a2924304c4a5621696ca63784f8ccbede46374b685227dcd` |
| 3 | `theorem` | [av_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/declarations/av-taper--eb0a2853ed065602565461f0.md) | 55 | `result-track:eb0a2853ed065602565461f0b751b4e4a1c33f5a24ecda9152b26b15f0015ef7` |
| 4 | `theorem` | [bv_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/declarations/bv-taper--3ac305900e8b2205b4ed0b72.md) | 56 | `result-track:3ac305900e8b2205b4ed0b72c75233c53a06c0f5b5f57b031a81a179dfa079ea` |
| 5 | `theorem` | [gv_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/declarations/gv-taper--02f5327c883e0cc4df552df8.md) | 57 | `result-track:02f5327c883e0cc4df552df85e12bc978d1370cbef25a3bf3528950f7cfa1c47` |
| 6 | `theorem` | [half_le_bv_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/declarations/half-le-bv-taper--2e69dd02b9ca74495e911595.md) | 60 | `result-track:2e69dd02b9ca74495e911595cffa89521d0c53be1a6916e8c8729a0337831301` |
| 7 | `theorem` | [admFamily_taper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FlatAdm/Variant298f43ab2dc02b59b9960e7a3637564597ae3bc866d6059faca8504ef47eec7b.lean/declarations/admfamily-taper--9e643cf2a869322c5ee401e7.md) | 66 | `result-track:9e643cf2a869322c5ee401e7f53bf9088cd3f836a746c5afaadc22c5abf8176b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
