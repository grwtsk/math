# sSup_add_one_lt_of_lt_cof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:585e73e9-bf52-088d-1487-f015911dad01",
  "kind": "theorem",
  "lexical_name": "sSup_add_one_lt_of_lt_cof",
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
  "slug": "ssup-add-one-lt-of-lt-cof--885c02de73787ce64248ddcd",
  "source": {
    "blob": "e5d05865bae3374749ebe619d277423423f3f821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0358acbff6e7b094bb42b2c72f5a40f0aa3be4f18c9ccbd37b8e96b9bb2e6175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:885c02de73787ce64248ddcd928f97ba1c3ae2faca246454941a0a06960a2cfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0358acbff6e7b094bb42b2c72f5a40f0aa3be4f18c9ccbd37b8e96b9bb2e6175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:585e73e9-bf52-088d-1487-f015911dad01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_add_one_lt_of_lt_cof {s : Set Ordinal.{u}} {a : Ordinal.{u}}
    (ha : #s < (lift.{u + 1} a).cof) (hs : ∀ i ∈ s, i < a) : sSup ((· + 1) '' s) < a := by
  let f := OrderIso.ofRelIsoLT (enum (α := s) (· < ·))
  have : Small.{u} (Iio (typeLT s)) := by
    refine small_of_injective (β := Iio a) (f := fun x ↦ ⟨f x, hs _ (f x).2⟩) fun _ ↦ ?_
    simp [Subtype.val_inj]
  have : range (fun i ↦ (f i).1 + 1) = (· + 1) '' s := by
    convert! range_comp (· + 1) (fun i ↦ (f i).1)
    rw [range_comp', f.range_eq]
    simp
  rw [← this, sSup_range]
  apply lt_of_le_of_ne
  · simp [hs]
  · rintro rfl
    rw [← lift_cof, ← Cardinal.lift_lt.{_, u + 2}, Cardinal.lift_lift,
      lift_cof_iSup_add_one fun _ ↦ by simp, cof_Iio, ← lift_cof, cof_type,
      Cardinal.lift_lift, Cardinal.lift_lt] at ha
    exact ha.not_ge (cof_le_cardinalMk _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0358acbff6e7b094bb42b2c72f5a40f0aa3be4f18c9ccbd37b8e96b9bb2e6175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0358acbff6e7b094bb42b2c72f5a40f0aa3be4f18c9ccbd37b8e96b9bb2e6175.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d05865bae3374749ebe619d277423423f3f821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
