# eq_of_cylinder_eq_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0dddb25-76da-e564-6fd5-00a175fab6df",
  "kind": "theorem",
  "lexical_name": "eq_of_cylinder_eq_of_subset",
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
  "slug": "eq-of-cylinder-eq-of-subset--e9607e7c88765ed44be36393",
  "source": {
    "blob": "3db4768a242244f020714b3f090254da00c898f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 226,
    "path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9607e7c88765ed44be363934e9598cfc4b093d09c00270693ae5bdd918da515",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0dddb25-76da-e564-6fd5-00a175fab6df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_cylinder_eq_of_subset [h_nonempty : Nonempty (∀ i, α i)] {I J : Finset ι}
    {S : Set (∀ i : I, α i)} {T : Set (∀ i : J, α i)} (h_eq : cylinder I S = cylinder J T)
    (hJI : J ⊆ I) :
    S = Finset.restrict₂ hJI ⁻¹' T := by
  rw [Set.ext_iff] at h_eq
  simp only [mem_cylinder] at h_eq
  ext1 f
  simp only [mem_preimage]
  classical
  specialize h_eq fun i ↦ if hi : i ∈ I then f ⟨i, hi⟩ else h_nonempty.some i
  have h_mem : ∀ j : J, ↑j ∈ I := fun j ↦ hJI j.prop
  simpa only [Finset.restrict_def, Finset.coe_mem, dite_true, h_mem] using h_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Cylinders/Variant3e49643d83ea6e5c8c4ff57c58a969dd9ad50a7cf78b016a92c3f13c93be2476.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3db4768a242244f020714b3f090254da00c898f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
