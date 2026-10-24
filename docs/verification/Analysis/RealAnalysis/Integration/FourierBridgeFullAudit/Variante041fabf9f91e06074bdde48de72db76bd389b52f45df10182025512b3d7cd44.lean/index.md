# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FourierBridgeFullAudit.Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a8aa95150d80a0c5b6bdb3fd33794d3efb2a12",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a8aa95150d80a0c5b6bdb3fd33794d3efb2a12`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_fourierInv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean/declarations/integral-fourierinv-mul-eq--c170f51b09789d8656d407e5.md) | 20 | `result-track:c170f51b09789d8656d407e5187e472a277eee02cf4eac0d3b2bd5bf6e429c0d` |
| 2 | `theorem` | [continuous_fourierInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean/declarations/continuous-fourierinv--c674cc150525f0deb702ecb0.md) | 34 | `result-track:c674cc150525f0deb702ecb04f62316dc38f31b011869fc00b4582c711698060` |
| 3 | `theorem` | [fourierInv_toLp_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean/declarations/fourierinv-tolp-ae--38bef967fc8ab804d67ffe9f.md) | 41 | `result-track:38bef967fc8ab804d67ffe9fb420e23030f05306c72d1f8a0d203e6b2c42e6be` |
| 4 | `theorem` | [fourierInv_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean/declarations/fourierinv-memlp--f277da1cec5c411c77cb22d3.md) | 72 | `result-track:f277da1cec5c411c77cb22d3c411294adaf9e7b38037db9937113a437dbb169f` |
| 5 | `theorem` | [fourierInv_toLp_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean/declarations/fourierinv-tolp-eq--8ddf3526ba36afe49b5bd73e.md) | 77 | `result-track:8ddf3526ba36afe49b5bd73ead40d83ab606f71ad6fc974823bce24eddc3ab7a` |
| 6 | `theorem` | [norm_fourierInv_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeFullAudit/Variante041fabf9f91e06074bdde48de72db76bd389b52f45df10182025512b3d7cd44.lean/declarations/norm-fourierinv-tolp--42e9130c15ba40953406f17b.md) | 83 | `result-track:42e9130c15ba40953406f17b4bf6676dcd23c33cfdb01ab1ac7e72c99213c3fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
