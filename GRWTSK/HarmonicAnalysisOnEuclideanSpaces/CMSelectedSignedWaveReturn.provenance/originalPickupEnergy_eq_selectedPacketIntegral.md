# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn.originalPickupEnergy_eq_selectedPacketIntegral`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMSelectedSignedWaveReturn.lean](../CMSelectedSignedWaveReturn.lean), line 174.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSelectedSignedWaveReturn.lean#L174).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn.originalPickupEnergy_eq_selectedPacketIntegral` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMScaleResidueHilbertAttachment.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleSignedPickupHilbertPort.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSelectedSignedWaveReturn.lean",
      "blob": "bedee8072837b0a96eb49beea79a4fd04efa1fe9",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Only an additive source leaf; no added logical assumptions or native evaluation, root import,
or claim of CM-to-Mobius intertwining. -/

/-!
# A common, source-identified Hilbert carrier for CM cycles and signed pickup

The geometric source is the ACTUAL rational CM Thom/Betti cycle image inside
`CMScaleResidueHilbertAttachment.actualSelectedCycleImages`. The arithmetic
source is the PREEXISTING signed `classWave j d r a u`: all parity and additive
residue coordinates, including nonunits and zeros, BEFORE taking a square.

For the constant positive square-modulus profile q=d^2, place the two parity
rows for dyadic inventory j at distinct stages 2j and 2j+1. This is a
bookkeeping embedding into the EXACT old `AllScaleHilbert` type, not an
assertion of equal physical scale or a canonical geometric polarization.

The finite coherent readout is source-exact. Its square, not the positive
Hilbert norm of the packet, reproduces the original signed pickup energy.
Projecting the common carrier onto actual CM cycles and their orthogonal
complement preserves the complete readout INCLUDING the signed cross term.
The two channels are not called independently positive arithmetic energies.
-/

/-- A positive modulus at every *address* stage; parity is kept in the stage.
The selected CM source can use precisely this same Hilbert carrier. -/

/-- An actual finite signed source packet in the FULL selected Hilbert sum.
Finitely many `lp.single` vectors guarantee ℓ² membership without assuming
that an uncontrolled family of packets is summable over all dyadic scales. -/

/-- Source-address injectivity for fixed inventory j; no parity or nonunit
residue is lost when entering the selected all-scale carrier. -/

/-- EXACT source identity: no replacement weights, no complexification of
signed arithmetic coefficients before their original real value is retained. -/

/-- The source's ACTUAL causal response is the finite packet readout at every
point of the original closed dyadic time window. -/

/-- NOT a freely selected algebraic label: these are the images of the
actual rational algebraic cycles of the SAME CM geometric source. -/

/-- SOURCE-EXACT energy return to the original signed arithmetic integral,
with the algebraic/residual channel and its mixed term explicitly retained. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
