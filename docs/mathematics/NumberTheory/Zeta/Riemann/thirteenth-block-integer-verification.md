# Thirteenth prefix block: exact source-draft verification

Parent: PR #398 exact head `c160df3501155e3939aa2cd657c1b8564466c8de`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 12: global prefix positions
768..831, integer bases 769..832. Every base in this block uses
logarithm-reduction exponent 9. The source exponent, 18-term logarithm
enclosures, 22 Taylor terms, eight squarings, complete seed error and 64-bit
directed rounding are unchanged.

Fresh exact diagnostics recomputed all 64 endpoints in ordinary and optimized
Python and compared them afterward with the retained transcript. Both modes
produced byte-identical reports and endpoint data. The suite completed
**14,116 exact assertions**. The first and last output numerators
over 2^64 are:

```text
base 769: (631176617653316630, 210037863903208018, error 3296)
base 832: (449334334246298028, -455073494657421153, error 3678)
```

Maximum observed canonical seed/error denominator lengths were
6,211 and 9,698
decimal digits. These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0 through 12 plus the independent
terminal base 4097. It leaves **51 prefix block checks (labels 13..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 52 data-check premises remain at source-composition scope. Prefix bases
833..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification
hold or mathematical conclusion is changed. Trusted Lean elaboration and the
full inherited type/import/axiom/computational audit remain mandatory.
