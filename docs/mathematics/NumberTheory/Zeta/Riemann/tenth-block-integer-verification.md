# Tenth prefix block: exact source-draft verification

Parent: PR #378 exact head `2ac5d0bdf584f8c02e38d72941d13b0801efff1b`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 9: global prefix positions
576..639, integer bases 577..640. Every base in this block uses
logarithm-reduction exponent 9. The source exponent, 18-term logarithm
enclosures, 22 Taylor terms, eight squarings, complete seed error and 64-bit
directed rounding are unchanged.

Fresh exact diagnostics recomputed all 64 endpoints and compared them afterward
with the retained transcript. The suite completed **14,116 exact assertions**.
The first and last output numerators over 2^64 are:

```text
base 577: (-249547207714441645, -726271524913362936, error 5889)
base 640: (-710810097041831192, 162604441075109824, error 4844)
```

Maximum observed canonical seed/error denominator lengths were
6,127 and 9,567 decimal digits.
These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0 through 9 plus the independent
terminal base 4097. It leaves **54 prefix block checks (labels 10..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 55 data-check premises remain at source-composition scope. Prefix bases
641..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification
hold or mathematical conclusion is changed. Trusted Lean elaboration and the
full inherited type/import/axiom/computational audit remain mandatory.
