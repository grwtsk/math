# Literature-scope witness for the harmonic weighted Chowla packet

Issue: #516. Parent harmonic packet: #511 / draft PR #513.

Evidence state: **LITERATURE_REVIEWED / WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## Reviewed theorem scopes

Current theorem comparison was performed against:
- Tao's logarithmically averaged two-point Chowla/Elliott theorem;
- Guo's 2026 quantitative logarithmic Chowla theorem uniformly over polylogarithmically growing shifts;
- Hughes's 2026 effective logarithmic two-point Chowla theorem in every window;
- OpenAI Math result 007 on ordinary fixed-form two-point correlations and corrected binary Elliott.

## Exact mismatch

The RH-E02 harmonic packet weights the **shift variable** by an exact discrete reciprocal difference while retaining an ordinary base-variable prefix:

```text
sum_h K(j,t,h) * C_h(t+1).
```

The principal logarithmic Chowla theorems instead weight the **base variable** by `1/n`.

These are distinct summation operators.

No reviewed theorem supplies the missing conversion at the required scope.

Additional mismatches are:
- current growing-shift logarithmic ranges are far below the full dyadic shift range;
- fixed-form ordinary results do not provide a uniform constant for the growing family;
- all-depth uniformity required by the packet is not automatic;
- Liouville-only statements require a separate Möbius source bridge where applicable.

## Typed witness

The source defines:
- `LogarithmicTwoPointScope`;
- `HarmonicWeightedPacketScope`;
- `LogarithmicToHarmonicWeightedAdapter`;
- `FixedFormOrdinaryToHarmonicAdapter`;
- `PolylogShiftToDyadicShiftAdapter`.

These types do not assert mathematical non-implication. They make the missing theorem obligations explicit.

A logarithmic source needs explicit proofs of:
1. averaging-variable conversion;
2. shift-range conversion;
3. all-scale/all-depth uniformity conversion.

A fixed-form ordinary source needs:
1. growing-family uniformity;
2. depth uniformity.

A polylogarithmic growing-shift source needs:
1. an extension to the full dyadic shift range.

Only after these obligations are supplied does the generic adapter route reach the harmonic packet and the existing conditional RH endpoint.

## Disposition

```text
WITNESS_CLASS =
  AVERAGING_VARIABLE_AND_GROWING_SHIFT_SCOPE_MISMATCH

NO_CURRENT_LOG_CHOWLA_ADAPTER
```

This is not a refutation of Tao, Guo, Hughes, OpenAI result 007, Chowla, Elliott, or RH.

## Next arithmetic frontier

Move away from attempting to import current logarithmic results directly. The next direct target should be a theorem stated on the exact harmonic shift-weighted packet itself, or a genuinely new duality theorem converting base-variable logarithmic averaging into shift-variable harmonic averaging.
