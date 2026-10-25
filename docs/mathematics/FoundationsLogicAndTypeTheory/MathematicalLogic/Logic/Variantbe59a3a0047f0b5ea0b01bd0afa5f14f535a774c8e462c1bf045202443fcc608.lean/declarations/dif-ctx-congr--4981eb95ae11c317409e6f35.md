# dif_ctx_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be070965eb3e04ecdffb915b2ac4a05be89a0199",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c2a9d72-0af5-052f-c905-88c995569551",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8e0744b-088b-3339-3c49-fdd880685f45",
  "kind": "theorem",
  "lexical_name": "dif_ctx_congr",
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
  "slug": "dif-ctx-congr--4981eb95ae11c317409e6f35",
  "source": {
    "blob": "be070965eb3e04ecdffb915b2ac4a05be89a0199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4981eb95ae11c317409e6f354411eb5d988bac2ab75f49277cf6850d648f7b95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8e0744b-088b-3339-3c49-fdd880685f45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dif_ctx_congr {α : Sort u} {b c : Prop} [dec_b : Decidable b] [dec_c : Decidable c]
    {x : b → α} {u : c → α} {y : ¬b → α} {v : ¬c → α}
    (h_c : b ↔ c) (h_t : ∀ h : c, x (Iff.mpr h_c h) = u h)
    (h_e : ∀ h : ¬c, y (Iff.mpr (not_congr h_c) h) = v h) :
    @dite α b dec_b x y = @dite α c dec_c u v :=
  match dec_b, dec_c with
  | isFalse _, isFalse h₂ => h_e h₂
  | isTrue _, isTrue h₂ => h_t h₂
  | isFalse h₁, isTrue h₂ => absurd h₂ (Iff.mp (not_congr h_c) h₁)
  | isTrue h₁, isFalse h₂ => absurd h₁ (Iff.mpr (not_congr h_c) h₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be070965eb3e04ecdffb915b2ac4a05be89a0199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
