# Finite labeled-graph adjacency and periodic-label comparison: source-bound review

Research date: 2026-11-01 (America/Los_Angeles). Mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. This is an ordinary finite mathematical proof and Lean SOURCE_PROOF_CANDIDATE; **NO native compilation, kernel acceptance, or axiom audit has run**.

## Immutable source basis

Initial source inspection at grwtsk/math main 23fa37bf6f8ef2ef24995d437515e08f1726c773:
- Canonical CertifiedTransversal.lean: blob df720cbb72c616938635c20477430f5f0ded4021.
- Whole-language consumer SoficLanguageTransversal.lean: blob 238da905b6595c944cac40f39ae2f54870032132.
- Actual LabeledGraph and WordPath in ExactSoficLanguageCover.lean: blob f50489eaf6c7277993a08925a58b7765f9e10ec9.
- Lean 4.34.1; Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612.
- Pinned Mathlib Matrix.Trace.lean blob a56896c81302543b7c1e84cd6937ceb00ea54332, and Mathlib.SimpleGraph.AdjMatrix.lean blob 6cd78f0a5c115c0b1df853a0ab4e0363346ad009. The latter has an analogous simple/undirected graph-walk theorem, but does NOT directly apply to the actual directed label-indexed graph.

The additive source is SoficPeriodicMatrixTrace.lean. Neither canonical schema nor sofic consumer is modified. The canonical Transversal covers the entire exact language and has a separate reverse target-coverage proof; it does NOT already define a periodic-point trace comparison.

## Exact adjacency-to-closed-walk theorem

For a finite state type S and finite alphabet A (the latter is an ADDITIONAL hypothesis not contained in ExactLanguagePresentation), define

  M(s,t) = sum_(a in A) 1_[G.edge s a t].

The source graph's edge predicate is indexed by (s,a,t); it contains at most one edge per such triple. Distinct labels and intermediate graph-state lifts are counted separately, not collapsed to distinct output words.

An independently defined finite last-edge walk recursion is

  W_0(s,t) = 1_[s=t],
  W_(n+1)(s,t) = sum_(u in S) W_n(s,u) * M(u,t).

The original Matrix.mul_apply and pow_succ equations, proved by induction on n, imply for EVERY n>=0 and both endpoints:

  (M^n)(s,t)=W_n(s,t).

Taking the original matrix trace gives

  trace(M^n) = sum_(s in S) W_n(s,s).

The new source contains full by-proof candidates for labeledAdjacency_pow_apply_eq_walkCount and trace_pow_eq_basedClosedWalkCount. The latter is based closed labeled walks, NOT periodic label points of the sofic factor. The module also introduces explicit LabeledWalkData with intermediate states and actual letters, and BasedCycleData as a dependent sum over initial states. Their cardinal equivalence with W_n remains the named target ExactBasedCycleCard; this is NOT yet a proved Lean theorem.

## Periodic points and precise conditional bridge

For n>0, repeatBlock hn letters is the infinite one-sided repetition of letters : Fin n -> Alphabet. PeriodicLabelPoint language n hn consists of those repeated sequences whose EVERY finite block belongs to the WHOLE given language. This is the correct source-language meaning of a shift point fixed by the n-th shift power.

The theorem periodicLabelPoint_card_eq_trace_of_exact_lifts is explicitly conditional on:
1. Complete whole-language equality: for every word, language word iff GraphLanguage G word.
2. ExactBasedCycleCard G n for the ACTUAL based closed-walk data.
3. A genuine equivalence e between BasedCycleData G n and PeriodicLabelPoint language n hn.
4. A label-preservation proof: the letter block of e(c) equals the actual extracted basedCycleWord G n c.

It follows by cardinality transport and the independent matrix trace theorem. The hypotheses are not inferred from mere soficity or a single finite graph run. A different arbitrary bijection that only happens to match cardinalities is insufficient; emitted labels must be the retained source labels.

This comparison is **not unconditional** for exact-language sofic presentations. The period-n label point need not lift to a based graph walk of length n, and distinct based graph walks can share the same label sequence.

## Two full-language counterexamples

Let Alphabet=Unit, State=Bool. Both graphs have exact FULL word language: all List Unit words.

1. Two disconnected states with one a-loop each: M=[[1,0],[0,1]]. For n>=1, trace(M^n)=2, but the full one-symbol shift has precisely one period-dividing-n label point. The label map has TWO based lifts of that point; injectivity fails.
2. Two states that alternate on each a: M=[[0,1],[1,0]]. For odd n, trace(M^n)=0, for even n trace(M^n)=2. The same full one-symbol label shift again has one period-dividing-n point at every n>0. At n=1 that point has no one-step closed graph lift; surjectivity of an n-period-preserving lift fails.

The source defines both actual LabeledGraph instances, exact whole-language presentations and supporting one-step counterexamples. This is an obstruction to an unconditional sofic trace/periodic-label formula, not a contradiction of the correct based-walk trace theorem.

## Independent finite integer diagnostics

Executed a separate Python reference script with seed 1576: 840 finite labeled directed graphs (1–4 states, 1–3 labels), all lengths 0..8; 64,278 exact integer matrix-entry and trace assertions comparing independent matrix multiplication to the last-edge walk recursion. Exact counterexample trace powers for n=1..6: duplicated loops = [2,2,2,2,2,2], alternating states = [0,2,0,2,0,2]; all finite Unit words through length 8 admitted by both graphs. This does NOT compile or kernel-check Lean.

Reference script SHA-256 e19fb7cdb3ecc44eb2703f02232b98a82be739540b79ec252e92cdcdadb8d120.
Result SHA-256 5ee137b32f4498a125baef4393634472c4ff0e2715d8796e317e6f8045f73988.
The script and result are in the conversation's external scratch environment, NOT added to the mathematical proof tree.

## Native acceptance requirements, still NOT_RUN

A local environment probe found no lean, lake, elan executable and no verified Noe/math checkout. Read canonical noe-proof-automation skill at Noe main d565356a049d5ccd6d6185f28ec3a820d8538a3c, skill blob 5292446e4ef1398ba928d8ad339b662415166f19. The managed Noe native owner/holds and receipt policy prevent substituting an unreviewed standalone runner. No source, shell, CI, workflow, scheduler, or native execution was dispatched.

Required verification, in order:
1. Read the exact source commit and full transitive import/Mathlib closure. Fresh native compile canonical CertifiedTransversal, ExactSoficLanguageCover and SoficLanguageTransversal, followed by SoficPeriodicMatrixTrace. Record actual command, toolchain hash, exit status and logs.
2. Fresh trust=0 Lean kernel replay at that exact commit, declaration-scoped expected type/universe checking, and a full transitive #print axioms audit, including generated, private and opaque dependencies. No library import, smoke test, source scan or finite example can replace these.
3. Independently review source proof scripts for matrix-power semantics, edge multiplicity, n=0 and n>0 scope, actual whole-word coverage, based state counts, and label-map multiplicity.
4. Prove ExactBasedCycleCard for the actual inductive based walks; obtain any label-preserving period-preserving cycle/point equivalence separately for a selected presentation. The two examples PROVE that no such equivalence holds for all exact sofic presentations.

Accepted mathematical content: the ordinary finite last-edge matrix recurrence and the explicit counterexamples. Formal status: SOURCE_PROOF_CANDIDATE, compilation NOT_RUN, expected types NOT_RUN, fresh kernel NOT_RUN, transitive axiom audit NOT_RUN. Original full sofic-language correspondence unchanged, universal periodic-point trace identity FALSE without additional hypotheses. No RH or dynamical zeta/determinant theorem is claimed.
