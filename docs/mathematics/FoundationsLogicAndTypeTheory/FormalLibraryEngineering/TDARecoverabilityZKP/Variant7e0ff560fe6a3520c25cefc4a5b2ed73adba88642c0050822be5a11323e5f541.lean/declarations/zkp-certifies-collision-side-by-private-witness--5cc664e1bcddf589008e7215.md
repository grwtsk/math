# zkp_certifies_collision_side_by_private_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d536bffc-490a-4b20-78a6-d97fc718006d",
  "kind": "theorem",
  "lexical_name": "zkp_certifies_collision_side_by_private_witness",
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
  "slug": "zkp-certifies-collision-side-by-private-witness--5cc664e1bcddf589008e7215",
  "source": {
    "blob": "fe5a811a35499695559525cd403882f675d94940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 445,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant7e0ff560fe6a3520c25cefc4a5b2ed73adba88642c0050822be5a11323e5f541.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cc664e1bcddf589008e72157110d55add4758db0e9f9f69a3160eb8b4760bdc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant7e0ff560fe6a3520c25cefc4a5b2ed73adba88642c0050822be5a11323e5f541.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d536bffc-490a-4b20-78a6-d97fc718006d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zkp_certifies_collision_side_by_private_witness
    (Z : ZkSNARK)
    (vk : Z.VerificationKey)
    (C : RecoverabilityCollision)
    (S : PublicStatement)
    (π : Z.Proof)
    (hObs : S.observation = C.left.fieldTDAObservation)
    (hTor : S.claim.claimedTorsion = C.left.rationalTorsion)
    (hVerify : Z.verify vk S π = true) :
    ∃ W : PrivateWitness,
      W.model.fieldTDAObservation = C.left.fieldTDAObservation ∧
        W.model.rationalTorsion = C.left.rationalTorsion := by
  rcases zkp_bridge_overcomes_field_blindness_by_witness
      Z vk S π hVerify with ⟨W, hWObs, hWTor⟩
  refine ⟨W, ?_, ?_⟩
  · rw [← hObs]
    exact hWObs
  · rw [← hTor]
    exact hWTor

/--
Final primitive: field-only recovery collapses on collisions, while a ZKP can
verify a private arithmetic witness for a public torsion claim.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant7e0ff560fe6a3520c25cefc4a5b2ed73adba88642c0050822be5a11323e5f541.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant7e0ff560fe6a3520c25cefc4a5b2ed73adba88642c0050822be5a11323e5f541.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe5a811a35499695559525cd403882f675d94940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
