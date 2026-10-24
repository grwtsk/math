# structurallySolved_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44a7a21110cc727bcbe81711043d396d2d963599",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5fed44f7dfec4819ba2bfb8463635a455a10d129433e3b78a5e51385f57dc7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6151716f-37f2-36eb-b1d2-156121f4e719",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2da1fef-5d3a-b3a6-77be-a3ff9766644c",
  "kind": "theorem",
  "lexical_name": "structurallySolved_sound",
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
  "slug": "structurallysolved-sound--5c338544a639ef4b1de1f139",
  "source": {
    "blob": "44a7a21110cc727bcbe81711043d396d2d963599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 281,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf5fed44f7dfec4819ba2bfb8463635a455a10d129433e3b78a5e51385f57dc7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c338544a639ef4b1de1f1394c41bfb1fdbc63cc7ca9b0c876d71d441c042ee4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf5fed44f7dfec4819ba2bfb8463635a455a10d129433e3b78a5e51385f57dc7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2da1fef-5d3a-b3a6-77be-a3ff9766644c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem structurallySolved_sound
    {cut : EvidenceCut}
    {solution : StructuralSolution cut}
    {unknowns : Array (UnknownObligation cut)}
    (_resolved :
      resolveMetaOverlapSemantics cut =
        .structurallySolved solution unknowns) :
    StructuralSemanticSound cut solution := by
  exact
    ⟨solution.certificate.cutWellFormed,
      solution.certificate.normalizationSound,
      solution.certificate.candidateCoverageSound,
      solution.certificate.tokenizationSound,
      solution.certificate.metadataTyped,
      solution.certificate.provenanceComplete,
      solution.certificate.graphWellFormed,
      solution.certificate.snapshotBound,
      solution.certificate.replayInputsCanonical⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf5fed44f7dfec4819ba2bfb8463635a455a10d129433e3b78a5e51385f57dc7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantf5fed44f7dfec4819ba2bfb8463635a455a10d129433e3b78a5e51385f57dc7c.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a7a21110cc727bcbe81711043d396d2d963599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
