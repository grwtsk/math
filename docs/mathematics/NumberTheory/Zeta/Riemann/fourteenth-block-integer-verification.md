# Fourteenth prefix block: exact source-draft verification

Parent: PR #408 exact head `66ebb7ed75028a740335c56f7230376e912ff674`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 13: global prefix positions
832..895, integer bases 833..896. Every base uses logarithm-reduction exponent
9. The source exponent, 18-term logarithm enclosures, 22 Taylor terms, eight
squarings, complete seed error and 64-bit directed rounding remain unchanged.

Fresh exact diagnostics recomputed all 64 endpoints and compared them afterward
with the retained transcript. Ordinary and optimized runs produced byte-identical
reports and endpoint data. The suite completed **14,116 exact assertions**.
The first and last output numerators over `2^64` are:

```text
base 833: (441278295561521323, -462358850967433536, error 3715)
base 896: (-163451814874990171, -594190989145065000, error 3962)
```

Maximum observed canonical seed/error denominator lengths were
6,270 and 9,790 decimal digits.
These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0 through 13 plus the independent
terminal base 4097. It leaves **50 prefix block checks (labels 14..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 51 data-check premises remain at source-composition scope. Prefix bases
897..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification hold
or mathematical conclusion is changed. Trusted Lean elaboration and the full
inherited type/import/axiom/computational audit remain mandatory.
