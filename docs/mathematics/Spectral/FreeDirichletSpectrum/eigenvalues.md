# Free Dirichlet eigenvalues and sine basis

The [free spectrum source](../../../../GRWTSK/Spectral/FreeDirichletSpectrum.lean) proves the entire finite eigenvalue list

$$\lambda_{k,N}=2\cos\left(\frac{\pi(k+1)}{N+1}\right),\qquad 0\le k<N.$$

Its sine vectors satisfy both zero boundary conditions and the actual matrix equation. Distinct eigenvalues give linear independence; the dimension equality makes the family a full basis. Diagonalization in that basis proves the characteristic polynomial and its root multiset, hence equality with the actual inclusive eigenvalue count. No sorted-eigenvalue formula is assumed.

The [free Dirichlet spectrum source](../../../../GRWTSK/Spectral/FreeDirichletSpectrum.lean) proves the sine eigenvectors with both boundary conditions, their linear independence and the dimension equality giving a complete basis. Diagonalization proves the characteristic polynomial and full eigenvalue multiset $2\cos(\pi(k+1)/(N+1))$ for $k<N$. Thus the actual inclusive free count, including multiplicities, equals the cosine-list count.


## Source and verification scope

[Source](../../../../GRWTSK/Spectral/FreeDirichletSpectrum.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.
