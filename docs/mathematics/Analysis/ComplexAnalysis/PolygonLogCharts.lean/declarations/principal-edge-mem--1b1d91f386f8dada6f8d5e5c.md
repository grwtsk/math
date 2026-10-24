# principal_edge_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:403907b9-f992-9e6c-6bc1-5b1b4019588e",
  "kind": "theorem",
  "lexical_name": "principal_edge_mem",
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
  "slug": "principal-edge-mem--1b1d91f386f8dada6f8d5e5c",
  "source": {
    "blob": "726608258a3f78c6469d4a5bc239a6c598bf7691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 67,
    "path": "GRWTSK/Analysis/Complex/PolygonLogCharts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b1d91f386f8dada6f8d5e5c2f68730fe9249e705cc7bc225254f1c7e44a4ca2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PolygonLogCharts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:403907b9-f992-9e6c-6bc1-5b1b4019588e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem principal_edge_mem {a b : ℂ} (h : PrincipalEdge a b) (t : I) :
    blend (t : ℝ) a b ∈ Complex.slitPlane := by
  apply Complex.mem_slitPlane_iff.mpr
  rcases h with h | h | h
  · left
    simpa [blend, Complex.real_smul] using positive_blend h.1 h.2 t
  · right
    have hi : 0 < (blend (t : ℝ) a b).im := by
      simpa [blend, Complex.real_smul] using positive_blend h.1 h.2 t
    exact ne_of_gt hi
  · right
    have hi : (blend (t : ℝ) a b).im < 0 := by
      have hp := positive_blend (neg_pos.mpr h.1) (neg_pos.mpr h.2) t
      simp only [blend, Complex.real_smul, Complex.add_im, Complex.mul_im,
        Complex.ofReal_re, Complex.ofReal_im, zero_mul, zero_add] at *
      nlinarith
    exact ne_of_lt hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PolygonLogCharts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/PolygonLogCharts.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726608258a3f78c6469d4a5bc239a6c598bf7691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
