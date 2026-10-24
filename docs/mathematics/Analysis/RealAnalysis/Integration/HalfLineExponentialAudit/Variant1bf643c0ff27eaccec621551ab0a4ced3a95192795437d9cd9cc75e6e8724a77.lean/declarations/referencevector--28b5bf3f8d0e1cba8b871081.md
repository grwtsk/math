# referenceVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6bd5551806f0ae7f3fb8b5d406a5b3f475f01562b0b6404a270a00cb7c96622",
  "kind": "def",
  "lexical_name": "referenceVector",
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
  "slug": "referencevector--28b5bf3f8d0e1cba8b871081",
  "source": {
    "blob": "565c307161b82d0f040089e85f80010954ab5359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28b5bf3f8d0e1cba8b87108178a7854613d6194c577fead694fe7bdbd843b83c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6bd5551806f0ae7f3fb8b5d406a5b3f475f01562b0b6404a270a00cb7c96622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def referenceVector : H := exponentialVector 1 (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565c307161b82d0f040089e85f80010954ab5359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
