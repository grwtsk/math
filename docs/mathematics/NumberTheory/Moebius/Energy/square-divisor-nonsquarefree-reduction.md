# Square-divisor indicator: squarefree branch closed

Issue: #899  
Parent: draft PR #897 at `c39d2cc23e630b4b00c6ff9093e060ba76191883`.

Using the definition of `Squarefree`, the source proves that if `n` is squarefree and
```text
q^2 | n,
```
then `q` is a unit in the naturals, hence `q=1`.

Therefore
```text
squareDivisorSet n = {1}
```
for squarefree `n`, and
```text
sum_(q^2|n) mu(q) = mu(1) = 1.
```

The remaining elementary statement is now only
```lean
NonsquarefreeSquareDivisorMobiusCancellation
```
with content
```text
not Squarefree n ->
  sum_(q^2|n) mu(q) = 0.
```

The source proves this remaining supplier is equivalent to the full square-divisor indicator identity, since the squarefree branch has been discharged.

Status:
```text
SQUAREFREE_SQUARE_DIVISOR_BRANCH_SCRIPTED
NONSQUAREFREE_SQUARE_DIVISOR_CANCELLATION_OPEN
DIVISOR_SQUARE_RESTRICTED_BINARY_ESTIMATE_OPEN
FOUR_DISTINCT_CORRELATION_ESTIMATE_OPEN
NOT_RUN
NOT_KERNEL_AUDITED
```
