# Fifth prefix block: exact source-draft verification

Parent: PR #355 exact head `8f1696842c77d498ae2a207ec568b5fe2bc572ff`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 4: global prefix positions
256..319, integer bases 257..320. Every base in this block uses
logarithm-reduction exponent 8. The source exponent, 18-term logarithm
enclosures, 22 Taylor terms, eight squarings, complete seed error and 64-bit
directed rounding are unchanged.

Fresh exact diagnostics recomputed all 64 endpoints and compared them afterward
with the retained transcript. The suite completed **14,116 exact assertions**.
The first and last output numerators over 2^64 are:

```text
base 257: (-1144320768943874007, -120772017370762877, error 6521)
base 320: (1019965048669237567, 151834436545510062, error 5131)
```

Maximum observed canonical seed/error denominator lengths were 5,704 and 8,914
decimal digits. These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0 through 4 plus the independent
terminal base 4097. It leaves **59 prefix block checks (labels 5..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 60 data-check premises remain at source-composition scope. Prefix bases
321..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification
hold or mathematical conclusion is changed. Trusted Lean elaboration and the
full inherited type/import/axiom/computational audit remain mandatory.
