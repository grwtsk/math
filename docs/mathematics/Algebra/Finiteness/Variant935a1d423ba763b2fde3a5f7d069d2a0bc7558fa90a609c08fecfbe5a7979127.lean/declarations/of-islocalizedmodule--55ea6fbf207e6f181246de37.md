# of_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc4ddc2f-a5a7-1462-f71c-783320a7377e",
  "kind": "lemma",
  "lexical_name": "of_isLocalizedModule",
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
  "slug": "of-islocalizedmodule--55ea6fbf207e6f181246de37",
  "source": {
    "blob": "c27e234bd015c01450062387f74afc5d36b65068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 49,
    "path": "GRWTSK/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55ea6fbf207e6f181246de37408b8762ac45fc2ed7ff3f9d21278d4be6c61aa9",
  "verification": {
    "reference": "docs/verification/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc4ddc2f-a5a7-1462-f71c-783320a7377e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_isLocalizedModule [Module.Finite R M] : Module.Finite Rₚ Mₚ := by
  classical
  obtain ⟨T, hT⟩ := ‹Module.Finite R M›
  use T.image f
  rw [eq_top_iff]
  rintro x -
  obtain ⟨⟨y, m⟩, (hyx : IsLocalizedModule.mk' f y m = x)⟩ :=
    IsLocalizedModule.mk'_surjective S f x
  have hy : y ∈ Submodule.span R T := by rw [hT]; trivial
  have : f y ∈ Submodule.map f (Submodule.span R T) := Submodule.mem_map_of_mem hy
  rw [Submodule.map_span] at this
  have H : Submodule.span R (f '' T) ≤
      (Submodule.span Rₚ (f '' T)).restrictScalars R := by
    rw [Submodule.span_le]; exact Submodule.subset_span
  convert (Submodule.span Rₚ (f '' T)).smul_mem
    (IsLocalization.mk' Rₚ (1 : R) m) (H this) using 0
  · rw [← hyx, ← IsLocalizedModule.mk'_one S, IsLocalizedModule.mk'_smul_mk']
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finiteness/Variant935a1d423ba763b2fde3a5f7d069d2a0bc7558fa90a609c08fecfbe5a7979127.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c27e234bd015c01450062387f74afc5d36b65068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
