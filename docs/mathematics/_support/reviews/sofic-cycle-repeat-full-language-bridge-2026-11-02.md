# Closed labeled cycles to full-language periodic label points: genuine source-bound factor bridge

Review date: 2026-11-02 (America/Los_Angeles). Local attribution: grwtsk contributors; formalization assistance and finite diagnostics: OpenAI ChatGPT. This is ordinary finite mathematics and Lean SOURCE_PROOF_CANDIDATE, not native Lean acceptance.

## Exact source and invariants

At first inspection math/main was 18f3e227e067b2ece7f1500bfd92b3b2673b318c; the relevant actual Git source blobs were:
- CertifiedTransversal.lean: df720cbb72c616938635c20477430f5f0ded4021.
- ExactSoficLanguageCover.lean: f50489eaf6c7277993a08925a58b7765f9e10ec9.
- SoficLanguageTransversal.lean: 238da905b6595c944cac40f39ae2f54870032132.
- SoficPeriodicMatrixTrace.lean: 70e416083e8fd1238ffdd8896f984e0a5382c139.
- SoficBasedCycleCard.lean: d7fd2f5aad643d4350e4b5bfd7128dd979717a74.
- SoficPeriodicFiberLedger.lean: becfa9cfddb8479c36a007c17d8be4d0d7defe05.

No existing original graph, matrix, language, based cycle or fiber definition is replaced in this development. The pinned environment is Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The approved native host is unavailable here; no Lean compile/kernel/axiom receipt is claimed.

## Graph part of the missing periodic-label map

The actual inductive LabeledWalkData G n s t has snoc constructors with a real original G.edge middle letter t proof. The original walkDataLabels returns the emitted list in its original sequence.

The additive SoficCycleRepeatBridge.lean has source proof candidates for:

1. wordPath_of_labeledWalkData: Every inductive LabeledWalkData corresponds to an ACTUAL WordPath G s (walkDataLabels G p) t, proved by induction and the already-published wordPath_append. No edge label or intermediate state is discarded.
2. finiteCopies: exact k-fold repetition of a list, defined by finiteCopies w 0=[] and finiteCopies w (k+1)=finiteCopies w k ++ w; length exactly k*length(w).
3. wordPath_finiteCopies: A genuine closed WordPath G s w s yields a closed WordPath with emitted list finiteCopies w k for EVERY k>=0, by repeated path concatenation.
4. graphLanguage_of_contiguous_factor: A WordPath for prefix++word++suffix splits twice, so word itself belongs to GraphLanguage G. This does not assume a deterministic, right-resolving or synchronized graph.
5. basedCycle_finiteCopies_graphLanguage: All literal finite repetitions of each actual based cycle's emitted word belong to GraphLanguage G.

These reductions do not assume complete language equality until returning the final factor to the source language.

## The remaining list-theoretic lemma is unconditional ordinary mathematics

A based cycle c of positive length n emits a finite list w with length n, by the existing walkDataLabels_length and basedCycleWord. The infinite repeatBlock hn (basedCycleWord G n c) reads exactly w[j mod n] at position j.

Given any finite word x in HasFiniteBlock of that repeated sequence, its witness supplies an arbitrary offset o and length L=length(x) such that x[i]=w[(o+i) mod n] for i=0..L-1.

A CONSTRUCTIVE finite-cover witness is:

    K := o + L + 1,
    copies := finiteCopies w K,
    prefix := copies.take o,
    suffix := copies.drop (o + L).

Since n>=1, K*n>=o+L. The finiteCopies entry at index o+i is w[(o+i) mod n], so

    copies = prefix ++ x ++ suffix.

This includes L=0, o beyond the first cycle, and arbitrary label coincidences. It requires only elementary finite-list concatenation/indexing and positive modulus. It does not need PNT, dynamical systems assumptions, graph determinism, right-resolving labeling or RH.

The exact proposition RepeatBlockOccursInFiniteCopies in the Lean source records this list/index bridge as an EXPLICIT UNPROVED Lean target, not an axiom. A source proof script for it is not claimed. The proof above is an ordinary mathematical argument awaiting pinned Lean elaboration.

## Conditional source-language map and correction equation

The new theorem hasLabelPreservingCycleMap_of_finiteCopies takes precisely:

- the actual LabeledGraph G with finite state and finite alphabet;
- a source language and an explicit whole-language equivalence hExact: for ALL words, language word ↔ GraphLanguage G word;
- a positive n, and the named RepeatBlockOccursInFiniteCopies proposition.

For each ACTUAL based cycle c, choose basedCycleWord G n c. For any block x of its infinite repeat, the finite-cover lemma gives a factor x of finiteCopies (walkDataLabels G c.2) K. The original closed-path concatenation proves this full copy list is admitted by the graph; the factor theorem gives GraphLanguage G x, and the RIGHT-TO-LEFT direction of hExact returns language x. Thus the chosen label block inhabits the ORIGINAL PeriodicLabelPoint language n hn. Its underlying Fin n label block is definitionally the ACTUAL basedCycleWord, so it is label-preserving.

The theorem periodicFiberBalance_of_finiteCopies then consumes that constructed map and the PREEXISTING natural-number fiber ledger, giving

    exists f : BasedCycleData G n → PeriodicLabelPoint language n hn,
      labels(f(c)) = basedCycleWord G n c, and
      trace(A_G^n) + unliftedLabelCount(f)
        = card(PeriodicLabelPoint language n hn) + surplusLabelLiftCount(f).

No injectivity, surjectivity, unique n-period lift or unconditional trace=periodic-label count is claimed. Both original double-loop and alternating-state Unit counterexamples still apply, and missing/surplus counts remain distinct.

## Independent exact finite diagnostics

The separate test script /mnt/data/sofic_cycle_repetition_reference.py exhausts all finite lists over alphabets of cardinality 0,1,2,3 with positive lengths n=1..6, 1,224 actual nonempty-period words, each offset and block length in 0..4n+3. It verifies both the concrete K=o+L+1 witness and the equality of the finite-copy substring with the repeated periodic block.

Result: 832,288 finite-block cases, 832,288 exact prefix/word/suffix identities and 10,685,872 exact periodic-entry comparisons. Empty blocks and offsets beyond one period are explicitly included; no failures.

Reference script SHA-256 fb3287ae18e8937ec7ca56be5156a9ee0a49ea99499acba640c3150a39523edf. JSON result SHA-256 06339a119b5ee615e3313fb7cf8ba10f2b684b3a666d4dc71e398a4c19dd070a. The test does not exhaust arbitrary lengths and is NOT an infinite theorem or Lean kernel evidence.

## Native verification and remaining work

Pinned Noe main at source inspection: 099ab3a1a8eaba21e9153c21704b0283fc691a5c; canonical noe-proof-automation SKILL.md blob 5292446e4ef1398ba928d8ad339b662415166f19. Tool discovery found no Lean, Lake or elan in this session and no verified local Noe/math checkout. Native project compilation, trust=0 replay, expected types/universes, transitive axiom audits and native owner/host restoration remain NOT_RUN/NOT_CHECKED. No native owner bypass, detached worker, CI or scheduler was invoked.

Source candidate proof scripts wordPath_of_labeledWalkData, finiteCopies_length, wordPath_finiteCopies, graphLanguage_of_contiguous_factor, basedCycle_finiteCopies_graphLanguage, hasLabelPreservingCycleMap_of_finiteCopies, and periodicFiberBalance_of_finiteCopies must be typechecked before their exact Lean status can be elevated.

The principal NEW precise remaining Lean obligation is RepeatBlockOccursInFiniteCopies: formalize the universal positive-period finite word/index equation with the constructive K=o+L+1 witness. Then prove HasLabelPreservingCycleMap with NO extra hFactors hypothesis. Only after that, investigate the bijectivity (generally false) versus surplus/unlifted exact fiber counts.

The canonical certified transversal and whole-language sofic consumer must still be freshly compiled and axiom-audited before any of their dependent declarations can be declared accepted. All earlier source-candidate NOT_RUN holds remain intact. No universal periodic-label trace, dynamical zeta determinant or RH proof follows from this incremental bridge.
