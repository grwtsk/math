# normalizedPsiError_eq_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:918b0680-6ce4-d14d-9844-d95bd48b3af9",
  "kind": "theorem",
  "lexical_name": "normalizedPsiError_eq_prefix",
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
  "slug": "normalizedpsierror-eq-prefix--7d7e490bc0f29433cdef5a54",
  "source": {
    "blob": "89bb75c146251823c8d27edf14fa59bfd3bf160f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d7e490bc0f29433cdef5a54fd676f7c332e1b987882472f8116b936b41c889e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:918b0680-6ce4-d14d-9844-d95bd48b3af9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedPsiError_eq_prefix (s : ℝ) :
    normalizedPsiError s = Real.exp (-s) * chebyshevPrimePower (Real.exp s) - 1 := by
  rw [normalizedPsiError, chebyshevError, mul_sub, ← Real.exp_add]
  simp

/-- Complete finite closed steps supply actual integrability, before linearity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bb75c146251823c8d27edf14fa59bfd3bf160f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
