# Ninth prefix block: exact source-draft verification

Parent: PR #377 exact head `6d4b7ce07e8b16e0ca21cfa63174816c3e6d8d92`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 8: global prefix positions
512..575, integer bases 513..576. Every base in this block uses
logarithm-reduction exponent 9. The source exponent, 18-term logarithm
enclosures, 22 Taylor terms, eight squarings, complete seed error and 64-bit
directed rounding are unchanged.

Fresh exact diagnostics recomputed all 64 endpoints and compared them afterward
with the retained transcript. The suite completed **14,116 exact assertions**.
The first and last output numerators over 2^64 are:

```text
base 513: (791102059629122747, -193587151659083459, error 3428)
base 576: (-231868148349465409, -732806359079681815, error 5883)
```

Maximum observed canonical seed/error denominator lengths were 6,090 and 9,511
decimal digits. These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0 through 8 plus the independent
terminal base 4097. It leaves **55 prefix block checks (labels 9..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 56 data-check premises remain at source-composition scope. Prefix bases
577..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification
hold or mathematical conclusion is changed. Trusted Lean elaboration and the
full inherited type/import/axiom/computational audit remain mandatory.
