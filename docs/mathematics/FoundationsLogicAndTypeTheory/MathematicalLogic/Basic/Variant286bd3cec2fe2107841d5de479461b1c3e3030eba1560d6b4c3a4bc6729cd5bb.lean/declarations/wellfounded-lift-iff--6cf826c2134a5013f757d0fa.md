# wellFounded_lift₂_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45cf0fe5-003e-0e11-83bd-7f41eff31914",
  "kind": "theorem",
  "lexical_name": "wellFounded_lift₂_iff",
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
  "slug": "wellfounded-lift-iff--6cf826c2134a5013f757d0fa",
  "source": {
    "blob": "fb40f73a614171fb03f32ee7f47b2abbe02c63c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 476,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cf826c2134a5013f757d0fa4b0b991acc823a711d034a8b8075ccc8873e6665",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45cf0fe5-003e-0e11-83bd-7f41eff31914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_lift₂_iff [Setoid α] {r : α → α → Prop}
    {H : ∀ (a₁ b₁ a₂ b₂ : α), a₁ ≈ a₂ → b₁ ≈ b₂ → r a₁ b₁ = r a₂ b₂} :
    WellFounded (Quotient.lift₂ r H) ↔ WellFounded r := by
  constructor
  · exact RelHomClass.wellFounded (Quotient.mkRelHom H)
  · refine' fun wf => ⟨fun q => _⟩
    obtain ⟨a, rfl⟩ := q.exists_rep
    exact acc_lift₂_iff.2 (wf.apply a)
#align well_founded_lift₂_iff wellFounded_lift₂_iff

alias ⟨WellFounded.of_quotient_lift₂, WellFounded.quotient_lift₂⟩ := wellFounded_lift₂_iff
#align well_founded.of_quotient_lift₂ WellFounded.of_quotient_lift₂
#align well_founded.quotient_lift₂ WellFounded.quotient_lift₂

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb40f73a614171fb03f32ee7f47b2abbe02c63c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
