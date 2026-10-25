# issue266_obligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe346a92-a1ae-5349-2d78-e74d75023334",
  "kind": "theorem",
  "lexical_name": "issue266_obligation",
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
  "slug": "issue266-obligation--79e7729f43dc84d8aeb107e7",
  "source": {
    "blob": "9c0bd76bc73aa87d64494f70e886c6048520a25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79e7729f43dc84d8aeb107e7ce6e57f40680c0e2ca44ab89fca9ab3620fdf8d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe346a92-a1ae-5349-2d78-e74d75023334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem issue266_obligation (A : Matrix m m ℂ) (C : Matrix n m ℂ)
    (B : Matrix n n ℂ) [Invertible B] : ComplexFeshbachInertiaObligation A C B := by
  intro hA hB hH hFB
  exact complexInertia_schur A C B hA hB.isHermitian

#print axioms complexInertia
#print axioms positive_count_schur
#print axioms negative_count_schur
#print axioms complexInertia_schur
#print axioms ComplexFeshbachInertiaObligation
#print axioms issue266_obligation
end ContinuousResearch.SchurInertia
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SchurInertiaDraft/Variant9fe9aceb55b8524db95ae0aec3f260df46fa96731c85e6e1990746b0b547ad59.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0bd76bc73aa87d64494f70e886c6048520a25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
