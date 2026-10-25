# wellFounded_lift₂_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e72d29db-6ff0-1b49-32c5-1fdb8cfa753c",
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
  "slug": "wellfounded-lift-iff--310a7a5f9e7c2f0620b219ac",
  "source": {
    "blob": "33ce1caf8fa4a30a3a5d46659de78567cce23b69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 407,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:310a7a5f9e7c2f0620b219ace8a43db705625785eff41f6d39f886b900b9de7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e72d29db-6ff0-1b49-32c5-1fdb8cfa753c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_lift₂_iff {_ : Setoid α} {r : α → α → Prop}
    {H : ∀ (a₁ b₁ a₂ b₂ : α), a₁ ≈ a₂ → b₁ ≈ b₂ → r a₁ b₁ = r a₂ b₂} :
    WellFounded (Quotient.lift₂ r H) ↔ WellFounded r := by
  constructor
  · exact RelHomClass.wellFounded (Quotient.mkRelHom H)
  · refine fun wf => ⟨fun q => ?_⟩
    obtain ⟨a, rfl⟩ := q.exists_rep
    exact acc_lift₂_iff.2 (wf.apply a)

alias ⟨WellFounded.of_quotient_lift₂, WellFounded.quotient_lift₂⟩ := wellFounded_lift₂_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcdee61a55c323838c8a6522aa2bbef95a022b4ee6f6965e868e4795d2112748f.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ce1caf8fa4a30a3a5d46659de78567cce23b69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
