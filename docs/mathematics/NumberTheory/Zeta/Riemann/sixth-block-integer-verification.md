# Sixth prefix block: exact source-draft verification

Parent: PR #359 exact head `bbb44dec4aa27593270a28984ee443ce417596f9`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 5: global prefix positions
320..383, integer bases 321..384. Every base in this block uses
logarithm-reduction exponent 8. The source exponent, 18-term logarithm
enclosures, 22 Taylor terms, eight squarings, complete seed error and 64-bit
directed rounding are unchanged.

Fresh exact diagnostics recomputed all 64 endpoints and compared them afterward
with the retained transcript. The suite completed **14,116 exact assertions**.
The first and last output numerators over 2^64 are:

```text
base 321: (1024068488522266057, 106552380063279889, error 4973)
base 384: (-712472749647725727, -615251638111881042, error 7323)
```

Maximum observed canonical seed/error denominator lengths were 5,748 and 8,983
decimal digits. These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0 through 5 plus the independent
terminal base 4097. It leaves **58 prefix block checks (labels 6..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 59 data-check premises remain at source-composition scope. Prefix bases
385..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification
hold or mathematical conclusion is changed. Trusted Lean elaboration and the
full inherited type/import/axiom/computational audit remain mandatory.
