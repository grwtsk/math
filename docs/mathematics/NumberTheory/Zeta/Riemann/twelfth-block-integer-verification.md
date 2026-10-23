# Twelfth prefix block: exact source-draft verification

Parent: PR #385 exact head `fd3904ae55cee9a0ff7d25919fadd55c7bfb26b3`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 11: global prefix positions
704..767, integer bases 705..768. Every base in this block uses
logarithm-reduction exponent 9. The source exponent, 18-term logarithm
enclosures, 22 Taylor terms, eight squarings, complete seed error and 64-bit
directed rounding are unchanged.

Fresh exact diagnostics recomputed all 64 endpoints in ordinary and optimized
Python and compared them afterward with the retained transcript. Both modes
produced byte-identical reports and endpoint data. The suite completed
**14,116 exact assertions**. The first and last output numerators
over 2^64 are:

```text
base 705: (14824785601785585, 694586387523677459, error 5381)
base 768: (627615137361355564, 221754905131450788, error 3337)
```

Maximum observed canonical seed/error denominator lengths were
6,175 and 9,642
decimal digits. These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0 through 11 plus the independent
terminal base 4097. It leaves **52 prefix block checks (labels 12..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 53 data-check premises remain at source-composition scope. Prefix bases
769..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification
hold or mathematical conclusion is changed. Trusted Lean elaboration and the
full inherited type/import/axiom/computational audit remain mandatory.
