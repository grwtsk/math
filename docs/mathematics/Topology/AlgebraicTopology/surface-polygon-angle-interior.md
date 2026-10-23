# Fundamental-domain injectivity on polygon directed-edge interiors

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** Owner [#935](https://github.com/grwtsk/math/issues/935), child of [draft PR #901](https://github.com/grwtsk/math/pull/901), exact parent head `e08b2826f99c21c62b51b07a8b383109f424cd60`.

The parent source defines the real continuous angular map from the exact unpaired cyclic polygon perimeter to `AddCircle (4*(k+2))`. The missing perimeter-circle homeomorphism requires this angular map's global bijectivity. This bounded source increment addresses **only source-level injectivity on half-open original directed edge intervals**.

For every original directed side c and real parameter t in [0,1), the original coordinate `directedSideOrdinal k c + t` belongs to the additive circle's genuine real fundamental domain [0,N), where N=4(k+2). The source scripts prove the handle ordinal and directed-side ordinal are injective and then use the actual imported Mathlib `AddCircle.coe_eq_coe_iff_of_mem_Ico` to infer

[
[operatorname{ordinal}(c)+t]=[operatorname{ordinal}(d)+u],
qquad 0\le t,u<1
quad\Longrightarrow\quad c=d\ \text{and}\ t=u.
]

This is the exact per-edge fundamental-domain separation needed in the larger bijection proof. The quotient-descended angular equality from issue #889 is carried back to this original source statement.

A hostile positive endpoint fixture verifies why the half-open hypothesis is necessary: the endpoint t=1 of one directed side equals the t=0 beginning of the next side under both the parent perimeter gluing and its additive-circle angle. A source-script theorem that demanded strict injectivity on the entire closed disjoint union would be **false**. The genus-two and genus-three source counts are eight and twelve directed intervals, respectively.

**Imported mathematical theorems:** the real `AddCircle` quotient and its [0,N) fundamental-domain injectivity, due to Mathlib authors; existing source handle ordering, finite polygon source identity and continuous angle formula due to the stacked #745/#834/#868/#889 work. These are not claimed novel.

**Still OPEN:** prove every unpaired perimeter point has a representative in the selected half-open source edges, including all seams; prove global angle injectivity on quotient representatives, prove global angle surjectivity; then use Mathlib's compact-to-Hausdorff theorem for a true homeomorphism to the standard circle. No cone-to-disk homeomorphism, genuine closed genus-g CW surface/manifold, true cellular/singular chain comparison, van Kampen/Hurewicz, hyperbolic length/trace, Selberg/Weil–Petersson, GUE/sofic, Chowla, zeta divisor or RH is established by this module.

One new isolated Lean source module, this note and one passive verification target only. No parent/global imports, toolchain, Lake, CI/workflow/cache, executor, native/VM/F06 or merge operations. Source declarations are **not** kernel-audited, and source-level Lean tactics may require repair under future authorized elaboration. Full exact-head #100 qualification remains held.