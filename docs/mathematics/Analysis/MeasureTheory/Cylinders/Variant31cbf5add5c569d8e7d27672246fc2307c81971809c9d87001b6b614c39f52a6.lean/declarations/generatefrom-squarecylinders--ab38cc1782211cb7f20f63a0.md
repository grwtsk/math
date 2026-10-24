# generateFrom_squareCylinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2261215ff3185093223f568f51086decdc99edc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9083f1ae-be38-1013-394a-f0aa35071411",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e57342e-c865-dfaa-f8ff-7dc1a09119c8",
  "kind": "theorem",
  "lexical_name": "generateFrom_squareCylinders",
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
  "slug": "generatefrom-squarecylinders--ab38cc1782211cb7f20f63a0",
  "source": {
    "blob": "e2261215ff3185093223f568f51086decdc99edc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 130,
    "path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab38cc1782211cb7f20f63a04f11d990f83b01ce8728a31a8fcd09a0a79b151d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e57342e-c865-dfaa-f8ff-7dc1a09119c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generateFrom_squareCylinders [∀ i, MeasurableSpace (α i)] :
    MeasurableSpace.generateFrom (squareCylinders fun i ↦ {s : Set (α i) | MeasurableSet s}) =
      MeasurableSpace.pi := by
  apply le_antisymm
  · rw [MeasurableSpace.generateFrom_le_iff]
    rintro S ⟨s, t, h, rfl⟩
    simp only [mem_univ_pi, mem_setOf_eq] at h
    exact MeasurableSet.pi (Finset.countable_toSet _) (fun i _ ↦ h i)
  · refine iSup_le fun i ↦ ?_
    refine (comap_eval_le_generateFrom_squareCylinders_singleton α i).trans ?_
    refine MeasurableSpace.generateFrom_mono ?_
    rw [← Finset.coe_singleton, squareCylinders_eq_iUnion_image]
    exact subset_iUnion
      (fun (s : Finset ι) ↦
        (fun t : ∀ i, Set (α i) ↦ (s : Set ι).pi t) '' univ.pi (fun i ↦ setOf MeasurableSet))
      ({i} : Finset ι)

end squareCylinders

section cylinder

/-- Given a finite set `s` of indices, a cylinder is the preimage of a set `S` of `∀ i : s, α i` by
the projection from `∀ i, α i` to `∀ i : s, α i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2261215ff3185093223f568f51086decdc99edc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
