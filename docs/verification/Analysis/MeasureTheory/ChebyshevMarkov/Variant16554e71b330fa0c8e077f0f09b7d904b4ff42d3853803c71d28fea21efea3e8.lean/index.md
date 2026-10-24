# Verification target: GRWTSK.Analysis.MeasureTheory.ChebyshevMarkov.Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9a404ae679fc46f2b5dd27917c4e5062080de70",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9a404ae679fc46f2b5dd27917c4e5062080de70`.

Source path: `GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_mul_meas_ge_le_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/declarations/pow-mul-meas-ge-le-elpnorm--2d72b6b9e94fd75e5882bda2.md) | 26 | `result-track:2d72b6b9e94fd75e5882bda204b2ce8902b38961fe44340110f28e6e862a6670` |
| 2 | `theorem` | [mul_meas_ge_le_pow_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/declarations/mul-meas-ge-le-pow-elpnorm--c3ad3b872404585ff2b79137.md) | 36 | `result-track:c3ad3b872404585ff2b7913717ef39d284d8379f4bed480f5ea0e2a45b99cff2` |
| 3 | `theorem` | [mul_meas_ge_le_pow_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/declarations/mul-meas-ge-le-pow-elpnorm--33178bf0a34a124584c96a51.md) | 48 | `result-track:33178bf0a34a124584c96a5154d0905d6ea3b0b4b13e1f7df1ff5858a95d987a` |
| 4 | `theorem` | [meas_ge_le_mul_pow_eLpNorm_enorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/declarations/meas-ge-le-mul-pow-elpnorm-enorm--373f4223a0cc823c6af09e3c.md) | 55 | `result-track:373f4223a0cc823c6af09e3c96aaff503eebf3e6be5a1ab7e1650262d73da96d` |
| 5 | `theorem` | [MemLp.meas_ge_lt_top'_enorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/declarations/memlp-meas-ge-lt-top-enorm--0f1a17a700a3534e0a6b10a9.md) | 68 | `result-track:0f1a17a700a3534e0a6b10a9e98cdb82957af75d291b54970277333a23738e94` |
| 6 | `theorem` | [MemLp.meas_ge_lt_top'](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/declarations/memlp-meas-ge-lt-top--96ff256caee0e919878f342b.md) | 77 | `result-track:96ff256caee0e919878f342bd25dde0c6817b5653fd579903891ac90d8c09b04` |
| 7 | `theorem` | [MemLp.meas_ge_lt_top_enorm](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/declarations/memlp-meas-ge-lt-top-enorm--f4caeb5c9eec9f41f0de42d4.md) | 84 | `result-track:f4caeb5c9eec9f41f0de42d4f63ba7f79e49bb8afce46a9ca55908bb2b063a6b` |
| 8 | `theorem` | [MemLp.meas_ge_lt_top](../../../../../mathematics/Analysis/MeasureTheory/ChebyshevMarkov/Variant16554e71b330fa0c8e077f0f09b7d904b4ff42d3853803c71d28fea21efea3e8.lean/declarations/memlp-meas-ge-lt-top--63cda0b45febe15bf1d144bf.md) | 89 | `result-track:63cda0b45febe15bf1d144bfe6ad018c8d5690d9bf6108a935dd4c9037303e61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
