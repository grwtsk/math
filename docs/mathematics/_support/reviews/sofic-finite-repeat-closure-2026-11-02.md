# Finite cyclic-repeat closure: original sofic periodic-label map source proof candidate

Date: 2026-11-02. Local mathematical attribution: grwtsk contributors; formalization assistance: OpenAI ChatGPT. **Source proof candidate: Lean compilation, fresh kernel replay, expected types and transitive axiom audit NOT_RUN.**

## Immutable input and no duplicated mathematical machinery

The new additive file is
GRWTSK/DynamicalSystemsAndErgodicTheory/SoficFiniteRepeatClosure.lean.

At inspected math/main 89622c3584bb66711040a6967c6161539ec6c92d, the source dependencies are:
- Original graph and full-language semantics: ExactSoficLanguageCover.lean, blob f50489eaf6c7277993a08925a58b7765f9e10ec9.
- Canonical CertifiedTransversal.lean, blob df720cbb72c616938635c20477430f5f0ded4021; its sofic-language consumer, blob 238da905b6595c944cac40f39ae2f54870032132.
- Exact labeled matrix/true periodic-label definitions: SoficPeriodicMatrixTrace.lean, blob 70e416083e8fd1238ffdd8896f984e0a5382c139.
- Inductive-based-cycle cardinality: SoficBasedCycleCard.lean, blob d7fd2f5aad643d4350e4b5bfd7128dd979717a74.
- Actual missing/surplus lift ledger: SoficPeriodicFiberLedger.lean, blob becfa9cfddb8479c36a007c17d8be4d0d7defe05.
- Previously published source of finite path repetitions and NAMED pure proposition: SoficCycleRepeatBridge.lean, blob a05e7d4527b6e37d59a48288f1e58e1a3867ca56.
- Concurrently added genuine graph/label bijection criterion: SoficCycleLabelBijection.lean, blob bd1ba53939ed6f5a4e00d76be9d6d433d09f3d0b.

The new module imports and extends these EXACT sources. It does not edit any old graph, source language, finite-word relation, based cycle definition or matrix kernel, does not duplicate canonical Transversal, and does not define any independent "physical observer". Pinned Lean v4.34.1, Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612. The required new APIs were examined at pinned Mathlib, including Mathlib/Data/List/OfFn.lean List.ofFn_congr and List.ofFn_fin_repeat, and pinned Lean 4.34.1 Init/Data/List/Nat/Sublist.lean List.infix_iff_getElem?.

## Ordinary mathematical proof of the finite-block occurrence lemma

Fix a finite alphabet and any positive period n, together with a finite tuple letters : Fin n -> Alphabet. The ORIGINAL periodic sequence is repeatBlock hn letters, with value letters[j mod n]. Let w be any finite block of that sequence, beginning at a HasFiniteBlock witness offset o; put L=length(w).

The original finiteCopies W k is defined recursively as:
  finiteCopies W 0 = [],
  finiteCopies W (k+1) = finiteCopies W k ++ W.
The first Lean helper proves
  finiteCopies W k = (List.replicate k W).flatten
by induction using List.replicate_succ' and List.flatten_concat.

Mathlib's exactly pinned List.ofFn_fin_repeat identifies
  finiteCopies (List.ofFn letters) k = List.ofFn (Fin.repeat k letters).
The finite tuple Fin.repeat k letters has value letters[j mod n] for each j<k*n. Hence the finite copy list and original infinite periodic source have the SAME values at all indices in the finite source inventory.

Choose the CONSTRUCTIVE repetition count
  k := o + L + 1.
Because n>=1, k*n>=o+L. For each index i<L, the HasFiniteBlock witness gives
  w[i] = letters[(o+i) mod n]
       = (finiteCopies (List.ofFn letters) k)[o+i].
The EXACT Lean 4.34.1 List.infix_iff_getElem? theorem then produces genuine finite lists prefix and suffix, with
  finiteCopies (List.ofFn letters) k = prefix ++ w ++ suffix.

Now for a TRUE based graph n-cycle c, the existing walkDataLabels_length theorem gives length(walkDataLabels G c.2)=n. The original basedCycleWord G n c is the Fin n tuple indexing that SAME list, so pinned List.ofFn_congr and List.ofFn_get give
  List.ofFn (basedCycleWord G n c) = walkDataLabels G c.2.

Substitution proves the PREEXISTING exact proposition RepeatBlockOccursInFiniteCopies G n hn for every graph, every based graph n-cycle, every arbitrary block and arbitrary offset. This is a mathematical proof, independent of deterministic labeling, exact soficity, faithful lifts or surjective lifts. The new Lean source supplies a full by-proof SCRIPT, no sorry or additional assumption, under the theorem name repeatBlockOccursInFiniteCopies_proof. Compiler elaboration is not tested.

## Genuine full-language return and integration

The PREVIOUSLY PUBLISHED SoficCycleRepeatBridge already proves as a source candidate:
- from an ACTUAL inductive LabeledWalkData, construct an original WordPath with the SAME edges and labels;
- finite copies of a closed WordPath are genuine closed labeled paths;
- every contiguous finite factor of an actual graph path is a GraphLanguage word;
- given RepeatBlockOccursInFiniteCopies and exact-language equality for ALL words, return a HasLabelPreservingCycleMap preserving the ORIGINAL basedCycleWord;
- reuse the original missing/surplus fiber ledger without claiming the label map is bijective.

The new by-proof candidate consumes repeatBlockOccursInFiniteCopies_proof to provide, now WITHOUT an hFactors hypothesis:
  hasLabelPreservingCycleMap_of_exact
  cycleWordsAdmissible_of_exact
  exactLanguage_periodicFiberBalance.

The concurrently published SoficCycleLabelBijection identifies three exact premises for a label-preserving bijection: CycleWordsAdmissible, FaithfulCycleWords, CompleteCycleLifts. The first is now supplied, source conditionally only on exact full-language presentation. The last TWO are still separate and FALSE for arbitrary exact sofic presentations. The additional theorem periodicLabelCard_eq_trace_of_exact_faithful_complete retains both genuine hypotheses and invokes the existing matrix-to-label counting return.

Thus the source proposition has moved from a graph-specific unknown to a pure index/list proof script; NO unqualified equality between graph trace and periodic label-point cardinality is introduced.

## Independent finite test and its limits

The previously uploaded script /mnt/data/sofic_cycle_repetition_reference.py was re-executed in this conversation, without altering its mathematical hypotheses. Its exact SHA-256 is fb3287ae18e8937ec7ca56be5156a9ee0a49ea99499acba640c3150a39523edf. Its re-created JSON again has SHA-256 06339a119b5ee615e3313fb7cf8ba10f2b684b3a666d4dc71e398a4c19dd070a.

The exact finite diagnostics covered all 1,224 positive-period words over alphabets of sizes 0..3 and periods 1..6, at offsets/lengths up to 4*n+3. All 832,288 original finite-block cases and prefix/suffix identities and all 10,685,872 periodic-index comparisons passed. The finite enumeration is bounded and does NOT prove the universal theorem, compile Lean, or constitute an axiom audit. The source file and proof script carry these assertions at the intended unchanged edge/list/types, rather than a numerical surrogate for the original finite-cycle source.

## Verification and mathematically indispensable boundary

No lean, lake, elan or verified local grwtsk/math/noeaaeue native checkout was available in this session. The canonical Noe proof-automation skill was inspected from noeaaeue main 750ce416070f51dca6cdb819e277d2593dccb5ba; skill blob 5292446e4ef1398ba928d8ad339b662415166f19. No managed registry v3 replay, worker, host activation, CI or scheduler was dispatched.

Native parsing/compilation NOT_RUN; fresh trust=0 kernel replay NOT_RUN; expected-type/universe inspection NOT_RUN; transitive axiom auditing NOT_RUN; complete dependency closure NOT_RUN; host restoration NOT_CHECKED; no accepted Lean theorem claimed. The exact source scripts can require tactic/lemma API adjustments during actual elaboration. Static lexical no-sorry/no-axiom checks do not substitute for kernel acceptance.

The next required formal checks are acceptance for the canonical schema and full sofic source consumer, then SoficPeriodicMatrixTrace, SoficBasedCycleCard, SoficPeriodicFiberLedger, SoficCycleRepeatBridge, SoficCycleLabelBijection and this new module, with exact source and imported library bindings. The two remaining substantive periodic-label equality premises are honest FaithfulCycleWords and CompleteCycleLifts, not automatically available from whole-language equality. Duplicate-loop and alternating graphs remain counterexamples to dropping either.

Issue grwtsk/math#1576 must remain OPEN. Neither RH, a universal sofic pseudofunctor, a dynamical zeta determinant identity nor blanket periodic-label trace equality is proved.
