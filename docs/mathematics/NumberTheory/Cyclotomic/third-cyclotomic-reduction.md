# Cubic-root reduction in the third cyclotomic integer ring

Use the actual field $K=\operatorname{CyclotomicField}(3,\mathbb Q)$ and its
[ring of integers](third-cyclotomic-ideals.md) $O$. Define the original source's
$\omega$ by `(IsCyclotomicExtension.zeta_spec 3 ℚ K).toInteger` and
$\lambda=\omega-1$. Then $\omega$ is a primitive cube root in $O$.

For an actual maximal ideal $P$ of $O$, the exact good-prime hypothesis
$\lambda\notin P$ implies that the actual quotient image of $\omega$ is a
primitive cube root in $O/P$. The proof uses the actual quotient field and
original root, with the exclusion retained explicitly.

## Actual ramified ideal and controls

The actual ideal $I=(\lambda)$ is prime, nonzero, maximal and proper, with
$N(I)=3$ and $|O/I|=3$. It contains $\lambda$ and $3$, and excludes $2$.
The image of $\omega$ in this quotient equals $1$ and fails to be a primitive
cube root. Thus maximality alone cannot supply the good-prime exclusion.
The intended negative control rejects precisely that substitution.

The good-prime theorem has a genuine consumer: the norm $N((2))=4$ makes
$(2)$ proper. A maximal ideal $P$ containing it exists. If $\lambda\in P$,
then $3,2\in P$ force $1\in P$, a contradiction. Consequently there is an
actual maximal $P$ above $(2)$ with $\lambda\notin P$, where the quotient
image of $\omega$ has order $3$. This does not identify $(2)$ itself as maximal
or its quotient as a particular finite field.

There is also no $p\in O$ satisfying both $I=(p)$ and
$\lambda^2\mid p-1$. Those conditions would put $p$ and $p-1$ in the proper
ideal $I$, forcing $1\in I$. The literal generator $p=\lambda$ is a checked
instance. Existence of a normalized generator at good primes remains a
separate obligation.

## Sources, verification and remaining suppliers

The [source](../../../../GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean),
[positive controls](../../../../GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicReduction.lean),
native receipt (artifact:gitblob:812ed44271f3984ca38b7fc940163fc84fc6a536)
and historical integration record (artifact:gitblob:51b4c9704798e0a1adda8831fe4f116ec06ee271)
record the selected source and control checks; the integration record retains the earlier context. The relocated-context native receipt audits 57 owned declarations in its exact recorded source and verifier context. This is not a theorem count or a claim that later shared verifier edits were replayed. Pinned Lean 4.33.0 checks trust
zero, fatal warnings and every owned declaration and transitive axiom,
allowing only `propext`, `Classical.choice` and `Quot.sound`. Clean pinned
dependency objects are reused and fingerprinted; their sources and the whole
umbrella are not rebuilt.

The actual root definitions and reduction proof retain OpenAI project credit
and Apache-2.0 terms from
[FiniteFourier](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/GaussSum/FiniteFourier.lean).
Mathlib's cyclotomic ideal results retain Xavier Roblot's named credit, with
individual imported cyclotomic/number-field/ideal-norm credits including
Riccardo Brasca, Ashvni Narayanan, Anne Baanen, Alex J. Best and Eric Rodriguez. The
source review (artifact:gitblob:7c8e1ea184c82c8a661d37b914fdd95d80bfd70f)
records exact identities and bounded source comparisons. Human direction:
grwtsk contributors; adaptation, formalization and checking: OpenAI Codex.
Correlated model/source review is not independent validation.

The [good-quotient cubic-character result](third-cyclotomic-characters.md)
supplies actual maximal-quotient cubic characters with the explicit good-prime
exclusion, including their zero, unit, reduction and exact-order laws.
Sextic/trace laws, Jacobi and normalized primary-generator witnesses, Gauss
coefficients, cube/column and Möbius weights, corrected masks, completed ideal
sums and common support for every frequency remain open.
These local root-reduction results do not close finite completed-sum
interchange, global bounds, the original detector or RH. They establish no
operational cache refinement.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean`](../../../../GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicReduction.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 21 |
| Theorem/lemma commands | 14 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
