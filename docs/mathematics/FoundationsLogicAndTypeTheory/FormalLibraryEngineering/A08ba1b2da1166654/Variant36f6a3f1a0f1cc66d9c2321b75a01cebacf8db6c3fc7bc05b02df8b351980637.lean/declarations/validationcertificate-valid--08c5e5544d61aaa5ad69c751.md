# ValidationCertificate.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01aa13263db0858d9a6badf2fd87469ec783d8df724cef0810172ee8b03b5bcb",
  "kind": "def",
  "lexical_name": "ValidationCertificate.Valid",
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
  "slug": "validationcertificate-valid--08c5e5544d61aaa5ad69c751",
  "source": {
    "blob": "ba6afcebbdc79a048f20bf6c2815bfd34fb436e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A08ba1b2da1166654/Variant36f6a3f1a0f1cc66d9c2321b75a01cebacf8db6c3fc7bc05b02df8b351980637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08c5e5544d61aaa5ad69c751a5e79da764219967f2c6f5571fa11a7be171cd34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A08ba1b2da1166654/Variant36f6a3f1a0f1cc66d9c2321b75a01cebacf8db6c3fc7bc05b02df8b351980637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01aa13263db0858d9a6badf2fd87469ec783d8df724cef0810172ee8b03b5bcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ValidationCertificate.Valid (certificate : ValidationCertificate) : Prop :=
  certificate.commandCoverage.Valid ∧ certificate.alignmentCoverage.Valid ∧
    certificate.contextCoverage.Valid ∧ certificate.witnessCoverage.Valid ∧
    certificate.reconstructionDigest.Valid ∧ certificate.unresolvedCount = 0 ∧
    certificate.valid = true

end Mathematics.SourceAnalysis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A08ba1b2da1166654/Variant36f6a3f1a0f1cc66d9c2321b75a01cebacf8db6c3fc7bc05b02df8b351980637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A08ba1b2da1166654/Variant36f6a3f1a0f1cc66d9c2321b75a01cebacf8db6c3fc7bc05b02df8b351980637.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba6afcebbdc79a048f20bf6c2815bfd34fb436e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
