# attachEvidence_preserves_version_disposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9319efba-3aef-5491-e870-fcc6ffa888d0",
  "kind": "theorem",
  "lexical_name": "attachEvidence_preserves_version_disposition",
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
  "slug": "attachevidence-preserves-version-disposition--50f7ab938730a35dd3d252a6",
  "source": {
    "blob": "f7425d22bda11d64ac388714214d6218915d4bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 404,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalObligation/Variant4bcc530b15c3620398a8f2f43ac8f997cfe1bc6d57769b87f8b4f34dce48560d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50f7ab938730a35dd3d252a61dc406022e1c564c84a9087a73a5b75827850f50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalObligation/Variant4bcc530b15c3620398a8f2f43ac8f997cfe1bc6d57769b87f8b4f34dce48560d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9319efba-3aef-5491-e870-fcc6ffa888d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem attachEvidence_preserves_version_disposition
    {specification : ExternalObligationSpec}
    {obligation : ExternalTheoremObligation specification}
    {status : ExternalObligationStatus}
    (state : ExternalObligationState obligation status)
    (artifact : ExternalEvidenceArtifact obligation)
    (nextEventChainDigest : Digest)
    (nextEventChainDigest_valid : nextEventChainDigest.Valid) :
    (attachEvidence state artifact nextEventChainDigest
      nextEventChainDigest_valid).history.versionDisposition =
        state.history.versionDisposition := by
  cases state <;> rfl

end ExternalObligationState

/--
Changing statement metadata, dependency profile, or environment creates a new
version with an explicit parent.  The previous obligation is not rewritten.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalObligation/Variant4bcc530b15c3620398a8f2f43ac8f997cfe1bc6d57769b87f8b4f34dce48560d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalObligation/Variant4bcc530b15c3620398a8f2f43ac8f997cfe1bc6d57769b87f8b4f34dce48560d.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7425d22bda11d64ac388714214d6218915d4bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
