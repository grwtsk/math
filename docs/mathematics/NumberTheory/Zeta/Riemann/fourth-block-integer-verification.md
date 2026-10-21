# Fourth prefix block: exact source-draft verification

Parent: PR #351 exact head `ded13255d7a0ad9d0943e8a9545bb5c343cf769c`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 3: global prefix positions
192..255, integer bases 193..256. Bases 193..255 use logarithm-reduction exponent
7; base 256 crosses to exponent 8. The source exponent, 18-term logarithm
enclosures, 22 Taylor terms, eight squarings, complete seed error and 64-bit
directed rounding remain unchanged.

Fresh exact diagnostics recomputed all 64 endpoints and compared them afterward
with the retained transcript. The suite completed **14,116 exact assertions**.
The first and last output numerators over 2^64 are:

```text
base 193: (704480943374653041, 1125534394210667244, error 5840)
base 256: (-1138148266334833527, -183974236304784571, error 6635)
```

Maximum observed canonical seed/error denominator lengths were 5,428 and 8,487
decimal digits. These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0, 1, 2 and 3 plus the independent
terminal base 4097. It leaves **60 prefix block checks (labels 4..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 61 data-check premises remain at source-composition scope. Prefix bases
257..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification hold
or mathematical conclusion is changed. Trusted Lean elaboration and the full
inherited type/import/axiom/computational audit remain mandatory.
