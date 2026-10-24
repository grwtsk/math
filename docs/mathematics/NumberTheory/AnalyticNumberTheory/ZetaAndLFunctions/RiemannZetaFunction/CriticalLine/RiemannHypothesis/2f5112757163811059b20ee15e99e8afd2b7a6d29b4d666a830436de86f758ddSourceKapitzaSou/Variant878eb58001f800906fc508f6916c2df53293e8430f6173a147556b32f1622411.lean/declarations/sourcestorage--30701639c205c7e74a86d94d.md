# sourceStorage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca06510f2658507618db766ffb4e94fa47d5a376b2f1bb8d20b2e9381ea703d0",
  "kind": "def",
  "lexical_name": "sourceStorage",
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
  "slug": "sourcestorage--30701639c205c7e74a86d94d",
  "source": {
    "blob": "ac91a0dcd07b4f7a81b5dc17612929bf4c9d71e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variant878eb58001f800906fc508f6916c2df53293e8430f6173a147556b32f1622411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30701639c205c7e74a86d94dd5542dd50fb9778ee2015cf123ec74fa11d9b4cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variant878eb58001f800906fc508f6916c2df53293e8430f6173a147556b32f1622411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca06510f2658507618db766ffb4e94fa47d5a376b2f1bb8d20b2e9381ea703d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceStorage (A s : ℝ) : ℝ :=
  storage (Real.exp (s / 2)) (nonaffineDiscrepancy A s) (sourceCorrector A s)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variant878eb58001f800906fc508f6916c2df53293e8430f6173a147556b32f1622411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2f5112757163811059b20ee15e99e8afd2b7a6d29b4d666a830436de86f758ddSourceKapitzaSou/Variant878eb58001f800906fc508f6916c2df53293e8430f6173a147556b32f1622411.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac91a0dcd07b4f7a81b5dc17612929bf4c9d71e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
