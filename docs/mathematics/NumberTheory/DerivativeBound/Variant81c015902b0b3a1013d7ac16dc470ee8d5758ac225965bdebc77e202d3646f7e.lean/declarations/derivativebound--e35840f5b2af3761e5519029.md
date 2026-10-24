# derivativeBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "345e2b4f0fbf1518148aa748ac234828bef4757b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81c015902b0b3a1013d7ac16dc470ee8d5758ac225965bdebc77e202d3646f7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6f4e11b-5b68-2b52-eefe-36875fcc13e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fc53708-1025-8360-a3d0-cbfab89a132a",
  "kind": "theorem",
  "lexical_name": "derivativeBound",
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
  "slug": "derivativebound--e35840f5b2af3761e5519029",
  "source": {
    "blob": "345e2b4f0fbf1518148aa748ac234828bef4757b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 52,
    "path": "GRWTSK/NumberTheory/DerivativeBound/Variant81c015902b0b3a1013d7ac16dc470ee8d5758ac225965bdebc77e202d3646f7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35840f5b2af3761e5519029e5bd961a95ec2ec7b9eedd1a999db1414f6d4f20",
  "verification": {
    "reference": "docs/verification/NumberTheory/DerivativeBound/Variant81c015902b0b3a1013d7ac16dc470ee8d5758ac225965bdebc77e202d3646f7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fc53708-1025-8360-a3d0-cbfab89a132a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeBound {R M r r' : ℝ} {z : ℂ} {f : ℂ → ℂ}
    (analytic_f : AnalyticOn ℂ f (Metric.closedBall 0 R)) (f_zero_at_zero : f 0 = 0)
    (re_f_le_M : ∀ z ∈ Metric.closedBall 0 R, (f z).re ≤ M) (pos_r : 0 < r)
    (z_in_r : z ∈ Metric.closedBall 0 r) (r_le_r' : r < r') (r'_le_R : r' < R) :
    ‖(deriv f) z‖ ≤ 2 * M * (r')^2 / ((R - r') * (r' - r)^2) := by sorry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/DerivativeBound/Variant81c015902b0b3a1013d7ac16dc470ee8d5758ac225965bdebc77e202d3646f7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DerivativeBound/Variant81c015902b0b3a1013d7ac16dc470ee8d5758ac225965bdebc77e202d3646f7e.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345e2b4f0fbf1518148aa748ac234828bef4757b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
