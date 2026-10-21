# Third prefix block: exact source-draft verification

Parent: PR #348 exact head `c108f110eab4cad9484547ec0ef16ffce2eff9d6`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This increment applies the existing canonical integer Taylor normalization and
Euclidean dyadic recurrence to original block label 2: global prefix positions
128..191, integer bases 129..192. All bases use logarithm-reduction exponent 7.
The source exponent, 18-term logarithm enclosures, 22 Taylor terms, eight
squarings, complete seed error and 64-bit directed rounding are unchanged.

For local `j : Fin 64`, `prefixIndex j` is global position `j+128` and `base j`
is `j+129`. Coverage is proved against the original `blockIndices 2` predicate.
The output is the exact decoded eighth integer iterate, not a declared record.

Fresh exact diagnostics recomputed all 64 endpoints and then compared them to
the retained transcript. They completed **14,116 exact assertions**. The first
and last output numerators over 2^64 are respectively:

```text
base 129: (1481045076244180822, 666598295618537273, error 8523)
base 192: (621624467888838502, 1177237025964527731, error 6041)
```

Maximum observed canonical seed/error denominator lengths were 5,287 and 8,269
decimal digits. These are diagnostic sizes, not Lean resource bounds. No
floating point, transcendental evaluation, new joint-zeta computation,
zero-count certificate or prime margin was used.

The composed source now supplies block labels 0, 1 and 2 plus the independent
terminal base 4097. It leaves **61 prefix block checks (labels 3..63) and the
original final six-field/two-tolerance aggregation check** as explicit premises.
Thus 62 data-check premises remain at source-composition scope. Prefix bases
193..4096 remain unproved by this increment. `SourceAcceptance` remains open.

No existing source file, public aggregate import, analytic estimate,
verification hold or mathematical conclusion is changed. Trusted Lean
elaboration and the full inherited type/import/axiom/computational audit remain
mandatory. Exact-rational diagnostics are not Lean proof or independent replay.
