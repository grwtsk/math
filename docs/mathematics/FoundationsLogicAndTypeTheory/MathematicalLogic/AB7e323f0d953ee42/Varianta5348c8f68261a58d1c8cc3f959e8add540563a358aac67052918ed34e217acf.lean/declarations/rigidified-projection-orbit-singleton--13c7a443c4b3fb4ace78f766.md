# rigidified_projection_orbit_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a1f60ec-a51c-4d77-38a6-b7eae09a8104",
  "kind": "theorem",
  "lexical_name": "rigidified_projection_orbit_singleton",
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
  "slug": "rigidified-projection-orbit-singleton--13c7a443c4b3fb4ace78f766",
  "source": {
    "blob": "f61b324746831be8e01ab59c6ddb1820d0c9a4a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AB7e323f0d953ee42/Varianta5348c8f68261a58d1c8cc3f959e8add540563a358aac67052918ed34e217acf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13c7a443c4b3fb4ace78f766acf918cf0694f5fc991aa85e4a143d86d592700c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AB7e323f0d953ee42/Varianta5348c8f68261a58d1c8cc3f959e8add540563a358aac67052918ed34e217acf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a1f60ec-a51c-4d77-38a6-b7eae09a8104`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rigidified_projection_orbit_singleton
    (certificate : ExternalRigidifierCert hierarchy)
    (projection : MonoHierarchy hierarchy.Element) :
    rigidifiedProjectionOrbit certificate projection = {projection} := by
  ext image
  constructor
  · rintro ⟨automorphism, mapped⟩
    have automorphismIsIdentity :
        automorphism.1 = StructuralIso.refl hierarchy := by
      apply StructuralIso.ext
      exact fixesEveryElement certificate automorphism
    rw [automorphismIsIdentity] at mapped
    have projectionEqualsImage : projection = image := by
      simpa [StructuralIso.refl] using mapped
    simp [projectionEqualsImage]
  · intro member
    have imageEqualsProjection : image = projection := by
      simpa using member
    subst image
    exact
      ⟨⟨StructuralIso.refl hierarchy, fun _ ↦ rfl⟩,
        by
          simp [StructuralIso.refl]⟩

end RigidifiedAut

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AB7e323f0d953ee42/Varianta5348c8f68261a58d1c8cc3f959e8add540563a358aac67052918ed34e217acf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AB7e323f0d953ee42/Varianta5348c8f68261a58d1c8cc3f959e8add540563a358aac67052918ed34e217acf.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f61b324746831be8e01ab59c6ddb1820d0c9a4a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
