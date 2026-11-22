# Original-Toolchain Alpöge RH Graph Adapter — Pinned Research Source

Maintained adapter: [ActualRHGraphBridge.lean](ActualRHGraphBridge.lean).
Mathematical consumer: [grwtsk/math issue #1848](https://github.com/grwtsk/math/issues/1848).

The adapter imports the ACTUAL external `Main` module and uses the independently checked theorem

`theorem riemannHypothesis : RiemannHypothesis := rhOfAll`

rather than inserting any source axiom or a proof placeholder. It defines an all-nontrivial-zero graph with actual Mathlib `riemannZeta` source membership, lower/candidate/upper directed relation inclusions, soundness and **global completeness**. It proves an equivalence between this graph's center-on-critical-line statement and the original Mathlib RH statement, and then proves the graph statement *unconditionally* by consuming `riemannHypothesis`. The source-derived eigenheight \(\gamma\) is the original imaginary ordinate, and the exact source return proves \(\zeta(1/2+i\gamma)=0\).

The source proof environment is **Lean 4.33.1**, Mathlib `0df444a360eaa60ab8c11dca51a86af692955474`, from Levent Alpöge's 20 Nov 2026 original release. Source mirror (read-only dependency, not vendored):
[tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f](https://github.com/tamnd/riemann-lean/tree/af705e0d9a5904326eb0693310e36d9484df7f8f/lean).
The mirror file `lean/src/Main.lean` has Git blob `dbd5db70bc11b35f18fa5751216ab335321e7bfc`; the official archived release SHA-256 is `9631b4f020199e580ba86178cb56c6e9b09f690c2369a80dc4334aa93f49c7fc`. The mirror's original Lean archive carries **no published copyright license**; it is referenced for study and verification rather than copied into the GRWTSK root source.

Independent original proof checks (not adapter checks): [Lean/Mathlib joint statement](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/), [MIT proof export verification](https://math.mit.edu/~drew/grh/) and [Waterloo replay](https://mrubinst.github.io/grh-lean-verification/).

## Exact execution plan in an authorized checkout

Use the genuine original released `lean/` directory, already checked against the original archive; ensure the proper source hash and build environment. Once the original `Main` module and full dependency closure have been built and checked under the upstream toolchain, execute this NEW adapter against the original project:

~~~sh
cd /path/to/alpoge-original-release/lean
cat lean-toolchain
git rev-parse HEAD   # if using a pinned Git mirror; not an original-archive hash
lake build Main
lake env lean --trust=0 -DwarningAsError=true \
  /absolute/path/to/grwtsk/math/docs/adaptations/environments/alpoge-rh-20261120/ActualRHGraphBridge.lean
~~~

The full original proof build is substantial (175,187 Lean modules) and was independently performed by other teams, but a newly published adapter does not inherit their exact checker results without running. The root `grwtsk/math` build is deliberately not changed or made to import `Main`, because its Mathlib 4.34.1 revision differs from the original 4.33.1 proof source. No cross-toolchain compatibility certificate is claimed.

**Source proof candidate:** This individual adapter has Lean compilation, axiom auditing and independent kernel replay **NOT_RUN**; it imports the independently verified source `riemannHypothesis` and has no unproved new axioms or `sorry` proof holes.

### Falsifiers

- The bridge must fail if `Main.riemannHypothesis` is replaced with the challenge-only declaration or an added axiom.
- It must fail if source soundness is weakened to an invented graph-spectrum zero.
- It must fail if source completeness omits any true nontrivial zeta zero.
- It must not prove a statement about general automorphic/motivic L-functions beyond the exact source theorem.

The new source-indexed diagonal is an observable spectral representation of original zeros. It is not an independent graph Laplacian or Hilbert–Pólya proof.
