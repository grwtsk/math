# rigidified_element_orbit_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a89adc273490515670ad7ba2797442c7b20b5109",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e9cdc88c791c7b6822ebb473b2b5b71d6ee5feb8e709c82e084675486d80bd1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d1ab544-9464-6227-098b-04dddd8b2f67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a34a721b-4157-4a68-6c21-07b93d422807",
  "kind": "theorem",
  "lexical_name": "rigidified_element_orbit_singleton",
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
  "slug": "rigidified-element-orbit-singleton--743da9ee6ce15bf88f68ba74",
  "source": {
    "blob": "a89adc273490515670ad7ba2797442c7b20b5109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AB7e323f0d953ee42/Variant8e9cdc88c791c7b6822ebb473b2b5b71d6ee5feb8e709c82e084675486d80bd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:743da9ee6ce15bf88f68ba74559d3c21e59d4df34cce84195215c816da7ad7f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AB7e323f0d953ee42/Variant8e9cdc88c791c7b6822ebb473b2b5b71d6ee5feb8e709c82e084675486d80bd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a34a721b-4157-4a68-6c21-07b93d422807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rigidified_element_orbit_singleton
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) :
    rigidifiedElementOrbit certificate element = {element} := by
  ext image
  constructor
  · rintro ⟨automorphism, mapped⟩
    rw [fixesEveryElement certificate automorphism element] at mapped
    simp [mapped]
  · intro member
    have imageEqualsElement : image = element := by
      simpa using member
    subst image
    exact
      ⟨⟨StructuralIso.refl hierarchy, fun _ ↦ rfl⟩, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AB7e323f0d953ee42/Variant8e9cdc88c791c7b6822ebb473b2b5b71d6ee5feb8e709c82e084675486d80bd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AB7e323f0d953ee42/Variant8e9cdc88c791c7b6822ebb473b2b5b71d6ee5feb8e709c82e084675486d80bd1.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89adc273490515670ad7ba2797442c7b20b5109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
