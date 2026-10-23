# Eighth prefix block: exact source-draft verification

Parent: PR #371 exact head `0cd8368bdfcbe2b8403ef0a9b04b86f4989898e1`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 7: global prefix positions
448..511, integer bases 449..512. Bases 449..511 use logarithm-reduction exponent
8; base 512 crosses to exponent 9. The source exponent, 18-term logarithm
enclosures, 22 Taylor terms, eight squarings, complete seed error and 64-bit
directed rounding remain unchanged.

Fresh exact diagnostics recomputed all 64 endpoints and compared them afterward
with the retained transcript. The suite completed **14,116 exact assertions**.
The first and last output numerators over 2^64 are:

```text
base 449: (-63240625031894205, 868255613429534408, error 6253)
base 512: (796916751115506195, -171865324262819997, error 3367)
```

Maximum observed canonical seed/error denominator lengths were 5883 and 9190
decimal digits. These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0 through 7 plus the independent
terminal base 4097. It leaves **56 prefix block checks (labels 8..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 57 data-check premises remain at source-composition scope. Prefix bases
513..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification
hold or mathematical conclusion is changed. Trusted Lean elaboration and the
full inherited type/import/axiom/computational audit remain mandatory.
