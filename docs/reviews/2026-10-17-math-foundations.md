# Source-only mathematical foundations audit — 2026-10-17

Status: **DRAFT / NOT_RUN / NOT_ACCEPTED**. Prepared on isolated candidate branch from immutable baseline `990688d77a474827ff6069e596ae42872fbf6673`. Does not modify `main`, the accepted `docs/verification/_library-root/spectral-descent-v1.toml` target, or any operational system. F06 remains held.

## Audit: reuse first, do not duplicate existing formalization

Existing canonical modules already implement significant generic parts of #88/#89:

- `GRWTSK.Logic.Inference.RuleSoundness`: `CertificateChecker`, exact accepted judgment theorem, `CheckedByteInterface`, and accept/reject/unknown distinctions.
- `GRWTSK.Logic.Inference.FiniteRuleSystems`: grounded finite-rule support, cycle-safe least closure, and semantic rule-soundness adapters.
- `GRWTSK.Order.Closure.FiniteDependencyClosure`: exact finite dependency reachability and leastness even with cycles.
- `GRWTSK.Logic.Locality.RevisionCertificates`: snapshot-bound freshness, semantic locality, and invalidation.
- `GRWTSK.Logic.Certificates.ProofCoverage`: explicitly distinct exploratory, finite, conditional, uniform and terminal mathematical grades.

**Open #88 obligations after reuse:** prove/admit source-specific checker soundness for each selected certificate class; exact byte/parser realization, source-bound actual Lean replay and trust/axiom audit, finite scope and hostile misclassification fixtures. An already-authored declaration is not an accepted receipt.

**Open #89 obligations after reuse:** non-entailing provenance/relevance graph semantics; exact heterogeneous-context and adapter proofs; end-to-end match with actual Lean dependent elaborated telescope, universe/instance/definition normalization and transitive trust. The new abstract adapter is illustrative and NOT a replacement for the kernel or an extractor.

## Bounded candidate math patches

1. `GRWTSK/Logic/Inference/DependentPortCut.lean`: one instance of a dependent telescope; a proof at a particular context; explicit joint-context mappings; proof-carrying directional implication/cut; exact intermediate context for transitive adapters; non-entailing descriptive-link hostile fixture. Pure Lean candidate; no ambient effect data.

2. `GRWTSK/Combinatorics/Matching/CyclicDutyDeficiency.lean`: separate four-checkpoint and nine-duty *types*; a partial injective matching into available players with compatibility proof; card-matching bound; cardinal shortage bound and nine-role/four-player >=5 deficit; exact rational 4/9 and 10/9 tag discrepancy calculations; constraint-change counterexample to assuming total admissible identity extension.

3. `docs/verification/_unscoped/fpc-math-candidate-v0.toml`: static not-run replay intent for *only* these candidates, not part of current accepted v1 manifest or public root import.

## Independent finite sanity calculations (not Lean evidence)

An external local Python enumerator tested all 4,608 bipartite compatibility graphs for (3 players, 3 duties) and (4 players, 3 duties). For each, exhaustive maximum matching equaled required duties minus the maximum Hall neighborhood deficit. It also tested the complete 4-by-9 graph (deficiency five), and computed the exact balanced-tag minimum for 50 small (N,m) pairs by exhaustive enumeration. Observed all PASS. These finite examples prove no general theorem and do not substitute for Lean elaboration.

## Explicit missing steps

- Run no Lean/Lake/native inspector until F06 coordinator releases the hold.
- Review actual candidate declaration names and exact types under the pinned toolchain, check all root and imported dependencies.
- Independently confirm no `sorryAx`, unexpected axioms, unsafe/native dependencies, or missing generated declarations.
- Formalize the *maximum*-matching Hall deficiency identity and general uniform (N,m) balanced-count minimum under #165. The present candidate only covers a cardinal lower bound and two finite arithmetic examples.
- Formalize event-sourced obstruction status, conditional liveness, source/refinement transport and actual cyclic score admission separately.
- Adopt source/rights lineage and accepted clean external replay receipts before any issue closure or mathematical claim promotion.

**Review disposition:** `CANDIDATE_REVIEWABLE / IMPLEMENTED_UNREPLAYED`. An external reviewer may reject or revise these candidate sources; this is not a proof of RH, ABC or accepted completion of #88, #89 or #165.

## Additional independent finite algebraic leaf: #113

The same draft branch now includes `GRWTSK/Analysis/Geometry/QuadraticHermiteDifference.lean`, **NOT_RUN**, with a monomial-basis quadratic source, literal first-jet formula, exact identity

```
  (p(s+h) - p(s-h)) / (2*h) = p'(s),  h != 0,
```

an orientation-reversal identity, and the explicit error-transport bound

```
  norm((e_plus-e_minus)/(2*h)) <= (norm(e_plus)+norm(e_minus))/(2*norm(h)).
```

An independent Python exact-rational enumeration checked 2,500 polynomial/coalescence examples; this is **not a Lean proof**. The residual conditioning diverges as the node separation tends to zero. Neither a genuine four-symbol Hermite decoder, its rank/condition number, nor a transport theorem from the *actual* (piecewise nondifferentiable) global arithmetic screw source is supplied. A native Hermite value/one-sided jet must remain separate from a sampled centered quotient at an arithmetic event. #113 stays open under the F06 hold.
