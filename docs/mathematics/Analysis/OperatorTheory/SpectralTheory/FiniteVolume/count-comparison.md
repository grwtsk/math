# Finite-volume eigenvalue-count comparison


## Quantitative approach to zero

The following comparison is an elementary consequence of the bounded binary potential, not an additional gap-opening theorem. Put $L=\min(V,0)$ and $U=\max(V,0)$. Each finite-volume perturbation lies between $L I$ and $U I$, so eigenvalue ordering gives, after taking the IDS limits,

$$
N_0(E-U)\le N_{\alpha,V}(E)\le N_0(E-L).
$$

For an internal label $\ell$, the unique free energy with this label is
$e_\ell=-2\cos(\pi\ell)$. Every point of the label plateau therefore satisfies

$$
e_\ell+L\le E\le e_\ell+U.
$$

Applying this to both gap endpoints yields

$$
0<b_\ell(V)-a_\ell(V)\le U-L=|V|\qquad(V\ne0).
$$

Consequently both endpoints converge to $e_\ell$ and every fixed labelled gap collapses as $V\to0$. Strict opening at each nonzero coupling is compatible with zero width in this limit. There is no uniform positive lower bound across all labels: infinitely many disjoint gaps fit inside a bounded spectral hull. For a fixed label on a compact interval of positive couplings bounded away from zero, continuity and strict opening do give a positive minimum.

The operator perturbation norm is at most $|V-W|$, so the spectra vary continuously in Hausdorff distance. Sturmian spectral measure nevertheless jumps from zero at every nonzero coupling to four at zero. Hausdorff convergence does not preserve Lebesgue measure.

The [finite-volume source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean) now constructs the real symmetric Dirichlet matrix on any number of consecutive integer sites, with arbitrary origin and phase and the same literal half-open coding. It proves the positive semidefinite comparison with the free matrix shifted by $L=\min(V,0)$ and $U=\max(V,0)$. The [matrix count proof](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean) projects the low-energy eigenbasis subspace of the higher matrix into that of the lower matrix. A nonzero kernel vector would have quadratic energy at most the cut for the former and strictly above the cut for the latter, contradicting the quadratic comparison. Injectivity pays the dimension inequality. Counts include eigenvalues equal to the cut and retain multiplicities.

Consequently the actual finite counts satisfy $n_{0,N}(E-U)\le n_{V,N}(E)\le n_{0,N}(E-L)$ for every energy, site origin, phase and both coupling signs, without requiring irrational frequency for this elementary comparison. Division by the volume preserves the inequalities. The limit-passage theorem proves the full IDS comparison when pointwise convergence of these actual normalized counts is supplied. The free limit is now proved separately; existence of the nonzero-coupling Sturmian limit and identification with an infinite operator remain unpaid.

The resulting gap-width consumer supplies the free limit and its inverse cuts internally. It retains the target Sturmian count-limit premise and an actual labelled gap, and concludes $0<b-a\le |V|$. It does not produce a gap or prove the Dry theorem.

The [matrix count source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean) proves reversed inclusive eigenvalue-count comparison from a positive semidefinite difference, and the version with shifted energy cuts from a quadratic-form comparison. It uses the actual orthonormal eigenbases and proves that projection from the higher matrix's low-energy subspace into the lower matrix's low-energy subspace is injective. A nonzero kernel vector would contradict the two quadratic-energy cuts. All multiplicities are retained; this is an unconditional finite-dimensional theorem.

The [Sturmian finite-volume source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean) applies that theorem to the literal half-open potential at consecutive integer sites, with arbitrary phase, origin, real coupling and finite volume. It proves

$$n_{0,N}(E-\max(V,0))\le n_{V,N}(E)\le n_{0,N}(E-\min(V,0))$$

at every energy. It also proves these inequalities after division by volume and passage to supplied pointwise limits of the actual count sequences. This comparison theorem alone does not establish limit existence.


## Source and verification scope

[Source](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Spectral/MatrixCountComparison.lean`](../../../../../../GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | Unavailable |
| Theorem/lemma commands | Unavailable |

Source-command totals are unavailable for this primary source.

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
