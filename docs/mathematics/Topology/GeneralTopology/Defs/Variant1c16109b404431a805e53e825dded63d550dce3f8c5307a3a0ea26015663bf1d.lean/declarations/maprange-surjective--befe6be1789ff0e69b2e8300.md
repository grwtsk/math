# mapRange_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4982e7c8-eb6d-75de-d0e3-8624fb197c2c",
  "kind": "theorem",
  "lexical_name": "mapRange_surjective",
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
  "slug": "maprange-surjective--befe6be1789ff0e69b2e8300",
  "source": {
    "blob": "508e6b417841822f3735dba061237c026e730a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 961,
    "line": 942,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:befe6be1789ff0e69b2e8300420de14d7449d0a426dcd8866948d9a4243c9c88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4982e7c8-eb6d-75de-d0e3-8624fb197c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 942–961.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapRange_surjective (f : ∀ i, β₁ i → β₂ i) (hf : ∀ i, f i 0 = 0) :
    Function.Surjective (mapRange f hf) ↔ ∀ i, Function.Surjective (f i) := by
  classical
  refine ⟨fun h i u ↦ ?_, fun h x ↦ ?_⟩
  · obtain ⟨x, hx⟩ := h (single i u)
    exact ⟨x i, by simpa using congr($hx i)⟩
  · obtain ⟨x, s, hs⟩ := x
    have (i : ι) : ∃ u : β₁ i, f i u = x i ∧ (x i = 0 → u = 0) :=
      (eq_or_ne (x i) 0).elim
        (fun h ↦ ⟨0, (hf i).trans h.symm, fun _ ↦ rfl⟩)
        (fun h' ↦ by
          obtain ⟨u, hu⟩ := h i (x i)
          exact ⟨u, hu, fun h'' ↦ (h' h'').elim⟩)
    choose y hy using this
    refine ⟨⟨y, Trunc.mk ⟨s, fun i ↦ ?_⟩⟩, ext fun i ↦ ?_⟩
    · exact (hs i).imp_right (hy i).2
    · simp [(hy i).1]

variable [∀ (i) (x : β₁ i), Decidable (x ≠ 0)] [∀ (i) (x : β₂ i), Decidable (x ≠ 0)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean#L942).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `508e6b417841822f3735dba061237c026e730a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
