# rmatch_iff_matches'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2aa55774-0b1e-bc1e-9ad8-320aa900ec6a",
  "kind": "theorem",
  "lexical_name": "rmatch_iff_matches'",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "rmatch-iff-matches--cf60bcf8122dc5922e18c7cb",
  "source": {
    "blob": "1fc8c924d0fa32be8044bc6e2de11dd109842eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 358,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variant59fd62d5de5eff2305b97656a9a257cb7e13d4e1e78b6da29d0ead85500718d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf60bcf8122dc5922e18c7cbb2f47574eaf86fda582ad996654f99df3035f41c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variant59fd62d5de5eff2305b97656a9a257cb7e13d4e1e78b6da29d0ead85500718d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2aa55774-0b1e-bc1e-9ad8-320aa900ec6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rmatch_iff_matches' (P : RegularExpression α) :
    ∀ x : List α, P.rmatch x ↔ x ∈ P.matches' := by
  intro x
  induction P generalizing x
  all_goals
    try rw [zero_def]
    try rw [one_def]
    try rw [plus_def]
    try rw [comp_def]
  case zero =>
    rw [zero_rmatch]
    tauto
  case epsilon =>
    rw [one_rmatch_iff]
    rfl
  case char =>
    rw [char_rmatch_iff]
    rfl
  case plus _ _ ih₁ ih₂ =>
    rw [add_rmatch_iff, ih₁, ih₂]
    rfl
  case comp P Q ih₁ ih₂ =>
    simp only [mul_rmatch_iff, comp_def, Language.mul_def, exists_and_left, Set.mem_image2,
      Set.image_prod]
    constructor
    · rintro ⟨x, y, hsum, hmatch₁, hmatch₂⟩
      rw [ih₁] at hmatch₁
      rw [ih₂] at hmatch₂
      exact ⟨x, y, hmatch₁, hmatch₂, hsum.symm⟩
    · rintro ⟨x, y, hmatch₁, hmatch₂, hsum⟩
      rw [← ih₁] at hmatch₁
      rw [← ih₂] at hmatch₂
      exact ⟨x, y, hsum.symm, hmatch₁, hmatch₂⟩
  case star _ ih =>
    rw [star_rmatch_iff]
    simp only [ne_eq, matches', Language.kstar_def_nonempty, mem_setOf_eq]
    constructor
    all_goals
      rintro ⟨S, hx, hS⟩
      refine' ⟨S, hx, _⟩
      intro y
      specialize hS y
    · rw [← ih y]
      tauto
    · rw [ih y]
      tauto
#align regular_expression.rmatch_iff_matches RegularExpression.rmatch_iff_matches'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variant59fd62d5de5eff2305b97656a9a257cb7e13d4e1e78b6da29d0ead85500718d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variant59fd62d5de5eff2305b97656a9a257cb7e13d4e1e78b6da29d0ead85500718d9.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc8c924d0fa32be8044bc6e2de11dd109842eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
