# liftProjectionOrbit_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "563f477cb6cae69aa8fbb955957e0f6f9662d57b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35db77571b74b54b4d1e47b6aa3684336350fba74c40c7650f6d437e0575c195.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78335148-fda6-bb4a-d328-540f97d11948",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29d10953-9de9-4d50-456d-46f0c3029dbb",
  "kind": "theorem",
  "lexical_name": "liftProjectionOrbit_unique",
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
  "slug": "liftprojectionorbit-unique--fb05f3642a2df23daa930036",
  "source": {
    "blob": "563f477cb6cae69aa8fbb955957e0f6f9662d57b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A1866b74a1710b270/Variant35db77571b74b54b4d1e47b6aa3684336350fba74c40c7650f6d437e0575c195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb05f3642a2df23daa930036707c8d17a6f787ab75c66b5f4e017e855b5fe761",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A1866b74a1710b270/Variant35db77571b74b54b4d1e47b6aa3684336350fba74c40c7650f6d437e0575c195.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29d10953-9de9-4d50-456d-46f0c3029dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftProjectionOrbit_unique
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate)
    (orbit : Finset (MonoHierarchy hierarchy.Element))
    (nonempty : orbit.Nonempty) :
    ∃! projection,
      projection ∈ orbit ∧
      ∀ candidate ∈ orbit,
        labeledProjectionCode certificate encoding projection ≤
          labeledProjectionCode certificate encoding candidate := by
  let selected :=
    liftProjectionOrbit certificate encoding orbit nonempty
  refine ⟨selected, ?_, ?_⟩
  · exact ⟨
      liftProjectionOrbit_mem certificate encoding orbit nonempty,
      liftProjectionOrbit_minimal certificate encoding orbit nonempty⟩
  · intro candidate candidateProperty
    have selectedMember :=
      liftProjectionOrbit_mem certificate encoding orbit nonempty
    have candidateLeSelected :=
      candidateProperty.2 selected selectedMember
    have selectedLeCandidate :=
      liftProjectionOrbit_minimal certificate encoding orbit nonempty
        candidate candidateProperty.1
    apply labeledProjectionCode_injective certificate encoding
    exact Nat.le_antisymm candidateLeSelected selectedLeCandidate

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A1866b74a1710b270/Variant35db77571b74b54b4d1e47b6aa3684336350fba74c40c7650f6d437e0575c195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A1866b74a1710b270/Variant35db77571b74b54b4d1e47b6aa3684336350fba74c40c7650f6d437e0575c195.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563f477cb6cae69aa8fbb955957e0f6f9662d57b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
