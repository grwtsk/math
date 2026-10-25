# Cofix.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95a479c3f4b240d8c2768c2480c4405512c4c0c70d99a66aa6efc49850d7117c",
  "kind": "def",
  "lexical_name": "Cofix.map",
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
  "slug": "cofix-map--9c0e9645f8d70a7ec80d9a2a",
  "source": {
    "blob": "625b87ba6a7606e1d2ba7461a3fd256ee8291982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c0e9645f8d70a7ec80d9a2afc1c1e316d57270de9f8df72cd76866c64a16154",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95a479c3f4b240d8c2768c2480c4405512c4c0c70d99a66aa6efc49850d7117c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cofix.map {α β : TypeVec n} (g : α ⟹ β) : Cofix F α → Cofix F β :=
  Quot.lift (fun x : q.P.M α => Quot.mk Mcongr (g <$$> x))
    (by
      rintro aa₁ aa₂ ⟨r, pr, ra₁a₂⟩; apply Quot.sound
      let r' b₁ b₂ := ∃ a₁ a₂ : q.P.M α, r a₁ a₂ ∧ b₁ = g <$$> a₁ ∧ b₂ = g <$$> a₂
      use r'; constructor
      · show IsPrecongr r'
        rintro b₁ b₂ ⟨a₁, a₂, ra₁a₂, b₁eq, b₂eq⟩
        let u : Quot r → Quot r' :=
          Quot.lift (fun x : q.P.M α => Quot.mk r' (g <$$> x))
            (by
              intro a₁ a₂ ra₁a₂
              apply Quot.sound
              exact ⟨a₁, a₂, ra₁a₂, rfl, rfl⟩)
        have hu : (Quot.mk r' ∘ fun x : q.P.M α => g <$$> x) = u ∘ Quot.mk r := by
          ext x
          rfl
        rw [b₁eq, b₂eq, M.dest_map, M.dest_map, ← q.P.comp_map, ← q.P.comp_map]
        rw [← appendFun_comp, id_comp, hu, ← comp_id g, appendFun_comp]
        rw [q.P.comp_map, q.P.comp_map, abs_map, pr ra₁a₂, ← abs_map]
      show r' (g <$$> aa₁) (g <$$> aa₂); exact ⟨aa₁, aa₂, ra₁a₂, rfl, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantd56152c2a0c4ad37c8a5abd7eb2f42f9166d0bc1a42f50630c342a6c28383ec8.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625b87ba6a7606e1d2ba7461a3fd256ee8291982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
