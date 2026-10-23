# Dirichlet joining edge and boundary count error


The [Dirichlet cut source](../../../../GRWTSK/Spectral/DirichletCut.lean) constructs the symmetric joining edge and factors its actual linear action through its two endpoint coordinates. This proves rank at most two. The general count proof records both the lower spectral projection and the full finite-dimensional defect; a vector in their common kernel would again contradict the low/high quadratic cuts. Thus a signed perturbation is controlled without assuming positive semidefiniteness.

Removing the edge at sites $N-1,N$ and reindexing proves the literal block matrix consisting of the first $N$ sites and the next $M$ sites. The second restriction starts at $o+N$, with the same phase and potential formula. Characteristic polynomial multiplication, followed by the root-multiset count, pays additivity for the cut matrix. For $N>0$ and $M\ge0$, this gives

$$\left|n_{V,N}^{o}(E)+n_{V,M}^{o+N}(E)-n_{V,N+M}^{o}(E)\right|\le2.$$

The normalized error is at most $2/(N+M)$, for every real energy, phase, origin and coupling. Exact count additivity for the original joined matrix is false already for two free sites at cut energy zero: the full count is one, while the sum of the two one-site counts is two. The bound supplies finite boundary control; it does not establish nonzero-coupling IDS convergence or uniform Sturmian word frequencies.

The [Dirichlet cut source](../../../../GRWTSK/Spectral/DirichletCut.lean) factors the actual joining edge through its two endpoint coordinates, proving rank at most two. The general count theorem injects the lower spectral subspace into the lower spectral coordinates of the comparison operator together with the complete finite defect space. A vector in their common kernel would contradict the low/high quadratic-energy cuts. This gives an inclusive count bound by the actual difference-range dimension, without a perturbation-sign assumption.

Removing the edge at sites $N-1,N$ and reindexing proves the literal two-block matrix. The second restriction starts at $o+N$. Characteristic polynomial multiplication and the root-multiset count prove exact additivity for the cut matrix. For $N>0$ and $M\ge0$, the actual joined counts therefore satisfy

$$\left|n_{V,N}^{o}(E)+n_{V,M}^{o+N}(E)-n_{V,N+M}^{o}(E)\right|\le2.$$

The normalized error is at most $2/(N+M)$, uniformly over energy, phase, origin and real coupling. This is finite boundary control, not IDS limit existence. Exact joined-count additivity is false already for two free sites at energy zero; retaining only one endpoint coordinate also loses the defect.


## Source and verification scope

[Source](../../../../GRWTSK/Spectral/DirichletCut.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Spectral/DirichletCut.lean`](../../../../GRWTSK/Spectral/DirichletCut.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 17 |
| Theorem/lemma commands | 11 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
