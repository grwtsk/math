# Totient and semiprime recovery from divisor sums

Local source attribution: grwtsk contributors. The first consumer is the normalization by Euler's totient in Joseph M. Shunia's reconstruction of prime powers. The second consumer is the repository's sorted, complete prime-power output on a semiprime whose divisor sum is known. Both functions take ordinary integers and exact ordinary divisor sums. [Totient implementation](TotientFromPowerDivisorSum.lean) · [Semiprime implementation](SemiprimeDivisorSum.lean) · [Canonical output](CompleteIntegerFactorization.lean)

## One exact query recovers the totient

Shunia's Lemma 3.2, equation (3.3), recovers the totient of a residual factor $2\le w\le n$ by taking the integer part of $w^{j+1}/\sigma(w^j)$ for $j\ge16\lceil\log_2 n\rceil$. The local proof works already at $j=2b$, where $b=1+\lfloor\log_2 w\rfloor$. This is a sufficient uniform bound. The code makes one call to the supplied function and reuses the query argument in the final division. Its factorization into prime powers appears only in the proof. [Shunia, arXiv:2611.34242v1, Lemma 3.2](https://arxiv.org/html/2611.34242v1#S3.SS1)

Let $X(w)=w^{j+1}$, $Y(w)=\varphi(w)\sigma(w^j)$ and $D=2^{j+1}$. For a prime power $q=p^e$, $e\ge1$, the geometric sum gives $X(q)-Y(q)=p^{e-1}$ and $D p^{e-1}\le X(q)$. Both $X$ and $Y$ multiply across relatively prime components. When multiplying components, expand the difference as $(X_1-Y_1)X_2+Y_1(X_2-Y_2)$. Induction over the $r$ distinct components gives $0\le D(X(w)-Y(w))\le r X(w)$. If $rw<D$, then $rX(w)<D w^j\le D\sigma(w^j)$. Thus $Y(w)\le X(w)<Y(w)+\sigma(w^j)$, precisely the integer-division criterion. Taking $j=2b$ suffices since $r\le\lfloor\log_2 w\rfloor$ and $w<2^b$. At $w=12$, taking $j=1$ would give $\lfloor144/28\rfloor=5$ while $\varphi(12)=4$.

| Declaration | Result |
| --- | --- |
| `totient_of_sigma_power` | The sufficient integer error test $rw<2^{j+1}$ implies the floor identity. |
| `totient_of_sigma_power_bits`, `shunia_lemma_3_2` | The input-only exponent bound and Shunia's original floor statement for residuals. |
| `readTotient_correct` | Agreement of the oracle at the single queried argument suffices. |
| `readTotient_widths` | The bit widths of the query, response and division numerator are at most $2b^2$, $4b^2$ and $2b^2+b$, respectively. |

For the width of the response, use $\sigma(x)\le x^2$. The bit widths measure actual arguments and answers. A running time for computing $\sigma$ or implementing the other arithmetic operations on a fixed machine requires separate evidence.

## A single value on the input suffices for semiprimes

Write $n=pq$ with primes $p\le q$ and let $s=\sigma(n)-n-1$. At $p=q$, the divisors are $1,p,p^2$, hence $s=p$. For distinct primes $s=p+q$, so $s^2>n$ and $s^2-4n=(q-p)^2$. The function tests $s^2=n$ and otherwise takes an integer square root and two exact halves. `decode_correct` gives the ordered pair. `rows_correct` gives exactly the repository's complete output, including exponent two for a square. For $15$, input sum $24$ gives the rows $(3,1),(5,1)$. For $49$, sum $57$ gives $(7,2)$. A composite with three prime factors falls outside this theorem, even if its exact divisor sum is supplied.

Bach, Miller and Shallit proved that the prime factorization of an arbitrary positive integer can be recovered in randomized polynomial time given its divisor sum (Theorem 2, 1986). The elementary deterministic semiprime decoder covers a special case directly. Shunia's general deterministic result uses a list of divisor sums on powers. The general randomized algorithm, its success distribution, and the complete deterministic recurrence algorithm have separate proof obligations. [Bach, Miller and Shallit, SIAM Journal on Computing 15 (1986), 1143–1154](https://doi.org/10.1137/0215083) · [Shunia, Theorem 3.1](https://arxiv.org/html/2611.34242v1#S3)

As a finite cross-check, an Euler-totient sieve was compared with the exact integer quotient for all 4,095 integers from 2 through 4,096. All three bit bounds held throughout. A factor-multiplicity enumeration over the same range checked 1,124 semiprimes, including all 18 prime squares. Both implementations use the pinned root Lean and Mathlib. Kernel replay results and the remaining general factoring obligations are tracked in [issue 1859](https://github.com/grwtsk/math/issues/1859).

Pinned Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` elaborated the local source. A joint fresh-kernel replay over nine root modules passed for 422 safe declarations and 24,952 transitive constants. The closure used `Classical.choice`, `Quot.sound` and `propext`. Four compiler-generated executable helpers were excluded as seeds. Independent review and Comparator for these local results were not run.
