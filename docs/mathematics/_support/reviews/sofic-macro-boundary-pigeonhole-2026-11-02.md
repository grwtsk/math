# Sharp periodic-word macro-boundary pigeonhole: source-level proof and acceptance ledger

Date: 2026-11-02 (America/Los_Angeles). Local mathematical attribution: grwtsk contributors; source formalization assistance: OpenAI ChatGPT.

**Trust scope:** complete ordinary finite combinatorial proof, a full Lean SOURCE BY-PROOF CANDIDATE, exact Git source references and independent finite integer diagnostics. No native Lean compilation, fresh kernel replay, expected-interface verification, or transitive axiom audit has been executed for the target.

## Immutable source scope

The new additive file is GRWTSK/DynamicalSystemsAndErgodicTheory/SoficMacroBoundaryPigeonhole.lean, Git blob 3cefc809745c95b490b3dce20880da7bd82ff9a4. The proposition targeted ALREADY EXISTS in the original GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicWordMatrix.lean, blob d8f0423d8b872e5045c779544bd39eb1bad7adfe:

  FiniteStateBlockBoundaryPigeonhole G :=
    ∀ word : List Alphabet,
      GraphLanguage G (finiteCopies word (card State)) →
      ∃ k, 0<k ∧ k≤card State ∧
        ∃ s : State, WordPath G s (finiteCopies word k) s.

Original source dependencies preserved: CertifiedTransversal df720cbb72c616938635c20477430f5f0ded4021; ExactSoficLanguageCover f50489eaf6c7277993a08925a58b7765f9e10ec9; SoficLanguageTransversal 238da905b6595c944cac40f39ae2f54870032132; SoficPeriodicMatrixTrace 70e416083e8fd1238ffdd8896f984e0a5382c139; SoficBasedCycleCard d7fd2f5aad643d4350e4b5bfd7128dd979717a74; SoficCycleRepeatBridge a05e7d4527b6e37d59a48288f1e58e1a3867ca56; SoficFiniteRepeatClosure e8d8dcc01f4e9f067cb9041ad5e54f7dd79d0962; SoficPeriodicFiberLedger becfa9cfddb8479c36a007c17d8be4d0d7defe05; SoficCycleLabelBijection bd1ba53939ed6f5a4e00d76be9d6d433d09f3d0b. Independently concurrently published SoficCycleRepetitionFromWalk.lean (00263005b2f46020c8f3a5434d8c6207eaa32622) remains intact and is not duplicated by this result.

Pinned Lean 4.34.1, Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612. Pinned Mathlib Fintype.pigeonhole lemma: Mathlib/Data/Fintype/Pigeonhole.lean, blob f467f803520337a89059cca4e7968b798dff1b1f, declaration Fintype.exists_ne_map_eq_of_card_lt. Original graph and finiteCopies remain unchanged. The new macro graph is solely an internal mathematical bridge to the ORIGINAL WordPath proposition, not an alternative graph-language model.

## Complete ordinary proof, with an exact original-source interface

Let q=card(State), including q=0, and fix an ACTUAL original path h from s to t labeled by finiteCopies word q (q complete copies of the ORIGINAL arbitrary finite word, which may itself be empty).

1. Define H=wordMacroGraph G word with the same State type, alphabet Unit, and edge H.edge x () y := WordPath G x word y. A macro edge is literally a proof of a real original WordPath; no new observational premise is introduced.
2. The source WordPath h splits at its final occurrence of word: finiteCopies word (k+1)=finiteCopies word k ++ word. Induction over q and original wordPath_split_append constructs a genuine LabeledWalkData H q s t. The nil case preserves the original endpoint equality.
3. Recursively index this ACTUAL inductive macro walk. The source's snoc constructor extends the Fin(n+1) boundary-state tuple with the original terminal state and records the original Unit edge proposition at every Fin n index. Thus the q-step macro walk has EXACTLY q+1 boundary states B : Fin(q+1) -> State.
4. Pinned Fintype.exists_ne_map_eq_of_card_lt B, using card(Fin(q+1))=q+1>q=card(State), supplies unequal indices i and j with B i=B j. Reorder their values to obtain i<j. Let k=j-i; then 0<k<=q.
5. The source-level segmentOfIndexed induction on k uses the ACTUAL macro edge at each intermediate index to produce LabeledWalkData H k (B i) (B j). The endpoint equality converts it into an original q-boundary subwalk based at B i. The reverse orientation i>j is handled symmetrically, not discarded.
6. Expand each macro edge back into its original WordPath G _ word _ by induction on the ACTUAL macro LabeledWalkData snoc. The resulting closed path is precisely WordPath G (B i) (finiteCopies word k) (B i), retaining the correct source graph, original emitted word and all original edge witnesses. This discharges the mathematical target for ANY finite State and Alphabet, with no graph determinism or independent label-lift assumptions.

For q=0, an input GraphLanguage G (finiteCopies word 0) requires a State witness, which does not exist. Hence the implication is vacuous without a special axiom or nonempty-State hypothesis. The same indexed proof handles q>0. For word=[], a macro edge is a real zero-length WordPath, and the boundary repetition and closed path remain valid; no positive letter-length requirement is added to this pigeonhole proposition.

## Full Lean source candidate

The new theorem is

  SoficMacroBoundaryPigeonhole.finiteStateBlockBoundaryPigeonhole_proof
    (G : LabeledGraph State Alphabet) :
    SoficPeriodicWordMatrix.FiniteStateBlockBoundaryPigeonhole G.

It has no named extra mathematical hypothesis and no authored sorry/axiom/unsafe declaration. The proof is decomposed into actual macro path conversion, indexed walk construction, segment extraction, pigeonhole, and original WordPath expansion. The source uses the pinned Mathlib pigeonhole theorem rather than inferring finite cardinality from a sampled graph. It does not prove or assume the other currently OPEN WordPowerClosedPathBridge or BoundedPeriodicWordMatrixCriterion, nor the independent FaithfulCycleWords or CompleteCycleLifts conditions.

**Critical acceptance limitation:** the Lean source has NOT been parsed, elaborated, compiled or fresh-kernel checked. Tactic API, implicit finite index casts, snoc endpoint rewrites and generated declaration types remain subject to native verification; no source-proof candidate is represented as Lean-accepted.

## Independent exact finite source diagnostics

The new independent reference script, /mnt/data/sofic_macro_pigeonhole_reference.py, derives actual original graph-state paths from the original directed (source,letter,destination) edge triples, then checks every indexed macro-boundary state and the extracted closed subpath. It does not import the prior periodic trace test implementation.

SHA-256 script bd80efc808f15eaa441ea3533d92f3d332a8e5c0d1e68bdf6b7ffe7d9cbcc6db;
SHA-256 result 96b3cbbad625168f2152156c2809fb6a901be9adb94e819108c570dccf733a9c.
Finite results:

- 956 graph presentations: exhaustive for all edge-subsets with at most 2 states and alphabet size at most 2, plus all 3-state/1-symbol graphs, and 160 seeded samples of 3-state/2-symbol graphs.
- 15,710 graph-word cases with lengths 0..4. For 12,815 accepted repeated-word paths, all yielded an actual closed macro segment with k in 1..card(State).
- Every extracted actual subpath edge was independently checked: 39,474 original edge membership checks, zero failures. Word equality was checked with the literal original repetitions and no label substitution.
- 2,895 cases had no original path and therefore no obligation; 956 empty-word cases, 3 zero-state graph presentations, and 4 empty-alphabet graph presentations were included.
- Witnessed k=1 in 11,860 cases, k=2 in 886, and k=3 in 69. Cases requiring k=card(State) appear at q=1,2,3.
- This test checks one reconstructed original path per admitted case, not ALL possible nondeterministic original paths. The mathematical source proof applies to every supplied path; these are separate scopes.

The script/result may be downloaded as conversation artifacts but were not inserted into math or Noe's native receipt store. Finite exact integer checks are not infinite theorem proofs or native Lean certificates.

## Verification holds and next original mathematical target

The canonical Noe proof-automation skill was inspected at Noe main d4db7d83a71e04df066754e2b041d006e924669f, skill blob 5292446e4ef1398ba928d8ad339b662415166f19. This session has no lean/lake/elan executable, verified local Noe/math checkout, current owner-resource admission, or native toolchain receipt. No native owner, CI, scheduler, worker or host admission was invoked. Noe owns any eventual source-bound registry-v3 replay and resource restoration.

Compilation NOT_RUN; expected types/universes NOT_RUN; fresh trust=0 kernel replay NOT_RUN; transitive axiom audit NOT_RUN; full original import closure NOT_RUN; native host restoration NOT_CHECKED; source script is NOT a Lean-certified theorem.

Next mathematical step: prove WordPowerClosedPathBridge for the ORIGINAL wordLiftMatrix of actual path witnesses, using the pinned finite product/multiplication cardinality semantics; then derive BoundedPeriodicWordMatrixCriterion from that bridge, this macro-boundary candidate and the previously published cycle repetition lemmas. The original full-language sofic consumer and the exact graph periodic-point boundary still need native acceptance. Even once the bounded criterion is formally proved, total adjacency trace=number of distinct shift-periodic label points remains FALSE for arbitrary presentations, so retain the original missing/surplus ledger.

Issue grwtsk/math#1576 remains OPEN. No general symbolic dynamical zeta determinant or RH conclusion.
