# map_leftInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32537b99-1500-8c42-189d-2275c10af3cd",
  "kind": "theorem",
  "lexical_name": "map_leftInverse",
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
  "slug": "map-leftinverse--2c33af5adf6c253b0df0cdd0",
  "source": {
    "blob": "37ddcb6d88ff7063d4687303a1e29480c8632e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 292,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdadd60ae41bcae47100ce7c910477dc57d33f0dae001e3fce950478ef75ea72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c33af5adf6c253b0df0cdd016109730e6908448aa0c258b589131bb53144371",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdadd60ae41bcae47100ce7c910477dc57d33f0dae001e3fce950478ef75ea72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32537b99-1500-8c42-189d-2275c10af3cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_leftInverse [Nonempty β] [Nonempty δ] {f₁ : α → β} {g₁ : γ → δ} {f₂ : β → α}
    {g₂ : δ → γ} : LeftInverse (map f₁ g₁) (map f₂ g₂) ↔ LeftInverse f₁ f₂ ∧ LeftInverse g₁ g₂ :=
  ⟨fun h =>
    ⟨fun b => by
      inhabit δ
      exact congr_arg Prod.fst (h (b, default)),
      fun d => by
      inhabit β
      exact congr_arg Prod.snd (h (default, d))⟩,
    fun h => h.1.prodMap h.2 ⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdadd60ae41bcae47100ce7c910477dc57d33f0dae001e3fce950478ef75ea72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdadd60ae41bcae47100ce7c910477dc57d33f0dae001e3fce950478ef75ea72b.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ddcb6d88ff7063d4687303a1e29480c8632e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
