# Repeated blocks, true remainders and phase shifts


Fix real frequency $\alpha$, phase $\xi$, coupling $V$ and energy $E$, integer origin $o$, and natural volumes $N,L,q,r$. Counts retain multiplicity and Dirichlet boundary conditions. Positivity is imposed only where stated below.

The [block-count source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts.lean) proves the actual count is at most the volume. For $L>0$, let

$$B_{q,L}^{o}(E)=\sum_{j=0}^{q-1}n_{V,L}^{o+jL}(E).$$

Keeping the remainder at its actual origin gives

$$\left|B_{q,L}^{o}(E)+n_{V,r}^{o+qL}(E)-n_{V,qL+r}^{o}(E)\right|\le2q.$$

For $q$ complete blocks, the sharper bound is $2(q-1)_+$, with natural truncated subtraction. Omitting the remainder pays its dimension:

$$\left|B_{q,L}^{o}(E)-n_{V,qL+r}^{o}(E)\right|\le2q+r.$$

With the actual natural quotient $q=\lfloor N/L\rfloor$ and remainder $r=N\bmod L$, for $N,L>0$ this yields

The block total uses denominator $N$, so it is weighted by the whole volume; it is not the average divided by $qL$. These bounds hold at every energy, origin, phase and real coupling. They prove no convergence by themselves.

The same source proves the literal matrix and count identity for the origin shift $\xi\mapsto\xi+o\alpha$. Consequently the block sum samples the actual origin-zero count observable at phases

$$\xi+o\alpha+j(L\alpha).$$

No irrationality hypothesis is needed for this algebraic adapter. Every-phase frequencies for that sampling, a finite-word observable identification, and the nonzero-coupling IDS limit remain separate obligations.

$$\left|\frac{n_{V,N}^{o}(E)}N-\frac{B_{\lfloor N/L\rfloor,L}^{o}(E)}N\right|\le\frac2L+\frac LN.$$


## Source and verification scope

[Source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Spectral/SturmianBlockCounts.lean`](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 13 |
| Theorem/lemma commands | 12 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
