# isLimit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57cc754c-453b-ec47-c90e-82f8aac1ee73",
  "kind": "theorem",
  "lexical_name": "isLimit_iff",
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
  "slug": "islimit-iff--a2d2225f190b8f2a7d41d0b8",
  "source": {
    "blob": "9ddba5f1bb4721f502a741e746161c6c97e53989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2d2225f190b8f2a7d41d0b80f782d4ef5cfcd25b6e03c62e27313411cf166d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57cc754c-453b-ec47-c90e-82f8aac1ee73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLimit_iff (c : Cone F) :
    Nonempty (IsLimit c) ↔ ∀ s ∈ F.sections, ∃! x : c.pt, ∀ j, c.π.app j x = s j := by
  refine ⟨fun ⟨t⟩ s hs ↦ ?_, fun h ↦ ⟨?_⟩⟩
  · let cs := coneOfSection hs
    exact ⟨t.lift cs ⟨⟩, fun j ↦ congr_fun (t.fac cs j) ⟨⟩,
      fun x hx ↦ congr_fun (t.uniq cs (fun _ ↦ x) fun j ↦ funext fun _ ↦ hx j) ⟨⟩⟩
  · choose x hx using fun c y ↦ h _ (sectionOfCone c y).2
    exact ⟨x, fun c j ↦ funext fun y ↦ (hx c y).1 j,
      fun c f hf ↦ funext fun y ↦ (hx c y).2 (f y) (fun j ↦ congr_fun (hf j) y)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant2db535cd3eb6c7804896384efbdfd1712566ed8a648ca73a2ce3eda1a09f2198.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ddba5f1bb4721f502a741e746161c6c97e53989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
