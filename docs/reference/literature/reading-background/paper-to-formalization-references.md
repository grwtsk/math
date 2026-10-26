# Paper-to-formalization references

Entries separate imported mathematical facts, new source-level proof candidates,
conditional interfaces, finite evidence, analogies, and unresolved hypotheses.
A source file, an inspected proof term, and a queued validation request are **not**
substitutes for a pinned Lean compilation, fresh kernel check, and transitive axiom
audit. Operational runs and receipts belong outside this mathematics repository.

## OpenAI (2026): QAOA attains the SK ground-state energy in the thermodynamic-first limit

- **Upstream title/byline/version:** *QAOA attains the SK ground-state energy in the thermodynamic-first limit*; OpenAI; September 25, 2026 preprint.
- **Stable source:** https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/QAOA-attains-the-SK-ground-state-energy-in-the-thermodynamic-first-limit-September-25-2026/QAOA-attains-the-SK-ground-state-energy-in-the-thermodynamic-first-limit-September-25-2026.pdf
- **Upstream immutable identity:** `openai/math` commit `1581d4cbdd69a0faf34b2089614fe2a814316a6a`; theorem-statement source `preprints/QAOA-attains-the-SK-ground-state-energy-in-the-thermodynamic-first-limit-September-25-2026/build/sections/01-introduction.tex`, blob `453caa0efc98c73518eb85f3c05bf03743b22e8b`.
- **Source results and exact limitations:** The manuscript's `thm:main` asserts `lim_{p→∞} Q_p = P_*` for zero-field Gaussian Sherrington–Kirkpatrick spins with Hamiltonian `h_{n,J}(σ) = n^{-1/2} Σ_{i<j} J_{ij} σ_i σ_j`, iid standard Gaussian `J_{ij}`, and deterministic fixed QAOA angles selected independently of `n` and `J` before the thermodynamic limit. Its `cor:regular-maxcut` concerns fixed-depth circuit expectations on sufficiently high-girth `(D+1)`-regular graphs (`girth > 2p+1`) and successive random-regular limits, with cost angles `2γ/√D`; it is not an all-graph optimality claim.
- **Method used locally:** Only the **finite classical** relation between an Ising `±1` spin difference, an edge-cut indicator, and the oriented squared-difference energy. The manuscript's MaxCut cost is `H_MC(G) = 1/2 Σ_{\{u,v\}∈E}(I-Z_u Z_v)`; no QAOA, Gaussian or Parisi theorem is imported as a proved local dependency. The elementary factor-eight calculation is a source-level bridge proposed here, not an upstream Lean theorem transported into this repository.
- **Exact local carrier hypotheses:** `SimpleEdgePresentation V` has a finite set of ordered endpoint pairs; no representative has equal endpoints; no pair appears together with its reversal. Thus each edge of the *represented finite simple undirected graph* has one representative. A spin assignment is any function `σ : V → Bool`, interpreted as `±1`. `cutSize` sums one zero/one indicator per representative; `orientedEnergy` sums the two squared spin differences per representative. It does **not** yet identify the carrier with an arbitrary `SimpleGraph` or the archived spectral `CellGraph`.
- **Local fully qualified source declarations:**
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.SimpleEdgePresentation`
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.spin`
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.cutIndicator`
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.cutSize`
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.edgeEnergy`
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.orientedEnergy`
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.spin_difference_sq`
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.spin_oriented_difference_sq`
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.edgeEnergy_eq_four_cutSize`
  - `GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy.orientedEnergy_eq_eight_cutSize`
- **Local source path and pin:** `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SpinCutEnergy.lean`; source commit `abcc289a8d926dab071031ecef7225bd6e3aa86b`; blob `e1fab09ea5cb7c53057467aab11f82db6016e9bd`.
- **Toolchain pin:** `leanprover/lean4:v4.33.0`; Mathlib requirement `db584cd6d46c92f209a44c0f1c829460d327499d` (subject to manifest consistency on replay).

### Verification and mathematical classification

- **Imported mathematics:** Mathlib's finite sums, Boolean case analysis and real arithmetic. No imported SK, Parisi or quantum theorem is claimed to be checked locally.
- **Kernel-verified bridges:** **None claimed for this increment.**
- **Source proof candidates:** `spin_difference_sq`, `spin_oriented_difference_sq`, `edgeEnergy_eq_four_cutSize`, and `orientedEnergy_eq_eight_cutSize` are newly authored Lean source-level propositions. Their intended equalities are respectively `(s(a)-s(b))² = 4 I[a≠b]`, the two-orientation value `= 8 I[a≠b]`, and the corresponding finite sum identities `E_edge=4 Cut` and `E_oriented=8 Cut`.
- **Conditional interfaces:** The presentation-to-`SimpleGraph` edge set and to the archived one-channel spectral `CellGraph`/`SpectralTensor` representation require explicit carrier maps, symmetry and factor-of-two audit; neither adapter exists here.
- **Finite evidence:** The intended Boolean case split has four elementary cases in source; **no actual execution/compile receipt exists**.
- **Analogy only:** The archived oriented graph energy is also a double-counted sum of squared adjacent values. Matching shapes do not establish transport to that carrier, SK Hamiltonians, QAOA or the Parisi value.
- **Unresolved premises:** source elaboration and exact dependency closure; fresh kernel checking and transitive axiom audit; `SimpleGraph` and archived spectral adapter; finite diagonal MaxCut Hamiltonian and Born-expectation equality; high-girth circuit light-cone locality; fixed-word tree-to-SK transfer; seeded-control removal; Parisi-limit inputs and quantified asymptotics.
- **Actual local verification commands/receipts:** `NOT_RUN`. Neither `lake env lean GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SpinCutEnergy.lean` nor `lake build GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy` was executed for this pinned source. Fresh kernel replay and `#print axioms` on both finite-sum theorems are **NOT_RUN**. No success exit status or receipt exists. Effectful validation and immutable receipts must be managed through `grwtsk/noeaaeue`, against the above exact math source identity; validation issue to be tracked separately.

The paper's accompanying `openai/math/lean/docs/281.md` explicitly limits its stated formalization scope to scalar SK value identities and the order parameter, not convergence of QAOA circuit energies. In `openai/math/lean/ComparatorChallenges/SKValue.lean` and `SKFullSupport.lean` at the upstream pin, the relevant comparator theorem bodies include `sorry`; their comparator statements must not be presented as kernel-certified QAOA convergence.

