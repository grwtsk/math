# Seventh prefix block: exact source-draft verification

Parent: PR #363 exact head `b7b35ec20e87aaa2d47afa04df511d6ceee84a76`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 6: global prefix positions
384..447, integer bases 385..448. Every base in this block uses
logarithm-reduction exponent 8. The source exponent, 18-term logarithm
enclosures, 22 Taylor terms, eight squarings, complete seed error and 64-bit
directed rounding are unchanged.

Fresh exact diagnostics recomputed all 64 endpoints and compared them afterward
with the retained transcript. The suite completed **14,116 exact assertions**.
The first and last output numerators over 2^64 are:

```text
base 385: (-733649113793603492, -587885432308548935, error 7308)
base 448: (-90669282570943444, 866797517262427348, error 6291)
```

Maximum observed canonical seed/error denominator lengths were
5,791 and 9,049
decimal digits. These are diagnostic sizes, not Lean resource bounds.

The composed source now supplies block labels 0 through 6 plus the independent
terminal base 4097. It leaves **57 prefix block checks (labels 7..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 58 data-check premises remain at source-composition scope. Prefix bases
449..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source, public aggregate import, analytic estimate, verification
hold or mathematical conclusion is changed. Trusted Lean elaboration and the
full inherited type/import/axiom/computational audit remain mandatory.
