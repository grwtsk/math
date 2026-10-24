# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Inversion.Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1e54ede8b12a60253f745cd0909fdb3278bb511",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1e54ede8b12a60253f745cd0909fdb3278bb511`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_integral_cexp_sq_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/declarations/tendsto-integral-cexp-sq-smul--c7d9774a857143faaecbcf66.md) | 54 | `result-track:c7d9774a857143faaecbcf662a9c3b0bcb0102d8da345bd90531d12ec21c396c` |
| 2 | `lemma` | [tendsto_integral_gaussian_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/declarations/tendsto-integral-gaussian-smul--aaf236491916287ed9d569ca.md) | 76 | `result-track:aaf236491916287ed9d569ca438370e53fc3771405a5b7c0e91553947927cb96` |
| 3 | `lemma` | [tendsto_integral_gaussian_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/declarations/tendsto-integral-gaussian-smul--df0ce45aa9b073afb07ffed6.md) | 109 | `result-track:df0ce45aa9b073afb07ffed62ff0a949e54c477218b02423b30cf100219f4a06` |
| 4 | `theorem` | [MeasureTheory.Integrable.fourierInv_fourier_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/declarations/measuretheory-integrable-fourierinv-fourier-eq--d36211ef9ba98811ee93a1b2.md) | 165 | `result-track:d36211ef9ba98811ee93a1b24f92bc727bd310add5fc1a47d7ef4e662337ca35` |
| 5 | `theorem` | [Continuous.fourierInv_fourier_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/declarations/continuous-fourierinv-fourier-eq--34cfda8e3e49c8b58ea52e1c.md) | 174 | `result-track:34cfda8e3e49c8b58ea52e1c52739af4003fd430ad777820012d7056c50941e7` |
| 6 | `theorem` | [MeasureTheory.Integrable.fourier_fourierInv_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/declarations/measuretheory-integrable-fourier-fourierinv-eq--d0bcd173c7088dbce9e21543.md) | 183 | `result-track:d0bcd173c7088dbce9e215439379b9c1d0d329abad10195bb549735b5c82a486` |
| 7 | `theorem` | [Continuous.fourier_fourierInv_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Inversion/Variant345a1a65d9e54fec6f3922274249e0b62af6f6af995919dca125f821e219d55a.lean/declarations/continuous-fourier-fourierinv-eq--bdc5a551ba40e930c2084269.md) | 192 | `result-track:bdc5a551ba40e930c2084269437673af04a000ba1a395f8255c57393a0197a15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
