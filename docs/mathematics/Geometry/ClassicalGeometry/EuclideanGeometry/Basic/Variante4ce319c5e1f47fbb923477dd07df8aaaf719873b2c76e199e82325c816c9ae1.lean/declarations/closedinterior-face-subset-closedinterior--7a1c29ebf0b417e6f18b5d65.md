# closedInterior_face_subset_closedInterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f60a8a2e-d3df-9254-c0b9-e24db224f05d",
  "kind": "theorem",
  "lexical_name": "closedInterior_face_subset_closedInterior",
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
  "slug": "closedinterior-face-subset-closedinterior--7a1c29ebf0b417e6f18b5d65",
  "source": {
    "blob": "7ad06735d7ccbc4a48f226c875c5799ed4eb37e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 628,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a1c29ebf0b417e6f18b5d65c478373e58c561986f058b3010c2aaf6eb84d74c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f60a8a2e-d3df-9254-c0b9-e24db224f05d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedInterior_face_subset_closedInterior [ZeroLEOneClass k] {n : ℕ} (s : Simplex k P n)
    {fs : Finset (Fin (n + 1))} {m : ℕ} (h : #fs = m + 1) :
    (s.face h).closedInterior ⊆ s.closedInterior := by
  intro p hp
  have hp' : p ∈ affineSpan k (Set.range s.points) :=
    Set.mem_of_mem_of_subset hp <|
      (s.face h).closedInterior_subset_affineSpan.trans <|
        affineSpan_mono k <| by simp
  obtain ⟨w, hw1, rfl⟩ := eq_affineCombination_of_mem_affineSpan_of_fintype hp'
  rw [affineCombination_mem_closedInterior_face_iff_mem_Icc _ _ hw1] at hp
  rw [affineCombination_mem_closedInterior_iff hw1]
  intro i
  by_cases hi : i ∈ fs <;> aesop

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variante4ce319c5e1f47fbb923477dd07df8aaaf719873b2c76e199e82325c816c9ae1.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ad06735d7ccbc4a48f226c875c5799ed4eb37e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
