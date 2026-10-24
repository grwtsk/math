# HasLines.hasPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:097d801a8f60b5db55d575eed375860b4de0ccd60c67366f2db1b056b70912fd",
  "kind": "def",
  "lexical_name": "HasLines.hasPoints",
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
  "slug": "haslines-haspoints--78cda45dd102dd3d1069f4d7",
  "source": {
    "blob": "49f83a1401d6b840707153706b768b5e2bd1d8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 287,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78cda45dd102dd3d1069f4d7f664fb55621af26baf34f2d316bb246af88d2564",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:097d801a8f60b5db55d575eed375860b4de0ccd60c67366f2db1b056b70912fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def HasLines.hasPoints [HasLines P L] [Fintype P] [Fintype L]
    (h : Fintype.card P = Fintype.card L) : HasPoints P L :=
  let this : ∀ l₁ l₂ : L, l₁ ≠ l₂ → ∃ p : P, p ∈ l₁ ∧ p ∈ l₂ := fun l₁ l₂ hl => by
    classical
      obtain ⟨f, _, hf2⟩ := HasLines.exists_bijective_of_card_eq h
      haveI : Nontrivial L := ⟨⟨l₁, l₂, hl⟩⟩
      haveI := Fintype.one_lt_card_iff_nontrivial.mp ((congr_arg _ h).mpr Fintype.one_lt_card)
      have h₁ : ∀ p : P, 0 < lineCount L p := fun p =>
        Exists.elim (exists_ne p) fun q hq =>
          (congr_arg _ Nat.card_eq_fintype_card).mpr
            (Fintype.card_pos_iff.mpr ⟨⟨mkLine hq, (mkLine_ax hq).2⟩⟩)
      have h₂ : ∀ l : L, 0 < pointCount P l := fun l => (congr_arg _ (hf2 l)).mpr (h₁ (f l))
      obtain ⟨p, hl₁⟩ := Fintype.card_pos_iff.mp ((congr_arg _ Nat.card_eq_fintype_card).mp (h₂ l₁))
      by_cases hl₂ : p ∈ l₂
      · exact ⟨p, hl₁, hl₂⟩
      have key' : Fintype.card { q : P // q ∈ l₂ } = Fintype.card { l : L // p ∈ l } :=
        ((HasLines.lineCount_eq_pointCount h hl₂).trans Nat.card_eq_fintype_card).symm.trans
          Nat.card_eq_fintype_card
      have : ∀ q : { q // q ∈ l₂ }, p ≠ q := fun q hq => hl₂ ((congr_arg (· ∈ l₂) hq).mpr q.2)
      let f : { q : P // q ∈ l₂ } → { l : L // p ∈ l } := fun q =>
        ⟨mkLine (this q), (mkLine_ax (this q)).1⟩
      have hf : Function.Injective f := fun q₁ q₂ hq =>
        Subtype.ext ((eq_or_eq q₁.2 q₂.2 (mkLine_ax (this q₁)).2
            ((congr_arg (_ ∈ ·) (Subtype.ext_iff.mp hq)).mpr (mkLine_ax (this q₂)).2)).resolve_right
            fun h => (congr_arg (p ∉ ·) h).mp hl₂ (mkLine_ax (this q₁)).1)
      have key' := ((Fintype.bijective_iff_injective_and_card f).mpr ⟨hf, key'⟩).2
      obtain ⟨q, hq⟩ := key' ⟨l₁, hl₁⟩
      exact ⟨q, (congr_arg (_ ∈ ·) (Subtype.ext_iff.mp hq)).mp (mkLine_ax (this q)).2, q.2⟩
  { ‹HasLines P L› with
    mkPoint := fun {l₁ l₂} hl => Classical.choose (this l₁ l₂ hl)
    mkPoint_ax := fun {l₁ l₂} hl => Classical.choose_spec (this l₁ l₂ hl) }

/-- If a nondegenerate configuration has a unique point on any two lines, and if `|P| = |L|`,
  then there is a unique line through any two points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49f83a1401d6b840707153706b768b5e2bd1d8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
