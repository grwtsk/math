# kapitzaWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:154b7e53f239d43b5afa69ce0ba75caafcbff9f8d15013678ed4432a9be4e6e5",
  "kind": "def",
  "lexical_name": "kapitzaWeight",
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
  "slug": "kapitzaweight--baf9ba16ec244adb318a0fd9",
  "source": {
    "blob": "89bb75c146251823c8d27edf14fa59bfd3bf160f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baf9ba16ec244adb318a0fd94b5bc2f99e9a4597c8466f4f7c04bc5e8cdf4946",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:154b7e53f239d43b5afa69ce0ba75caafcbff9f8d15013678ed4432a9be4e6e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kapitzaWeight (A s : ℝ) : ℝ := Real.exp (s / 2) * kapitzaKernel A s

/-- The upper endpoint uses the closed prefix, including a touching atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bb75c146251823c8d27edf14fa59bfd3bf160f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
