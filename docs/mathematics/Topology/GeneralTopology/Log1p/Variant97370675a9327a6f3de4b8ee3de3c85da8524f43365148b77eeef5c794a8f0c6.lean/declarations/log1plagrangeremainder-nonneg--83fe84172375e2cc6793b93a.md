# log1pLagrangeRemainder_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:271db660-1ad8-596a-3ac2-f558fc821c82",
  "kind": "theorem",
  "lexical_name": "log1pLagrangeRemainder_nonneg",
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
  "slug": "log1plagrangeremainder-nonneg--83fe84172375e2cc6793b93a",
  "source": {
    "blob": "bf9e8892b67e403f0ebaf17412bc3ebafbeb336d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83fe84172375e2cc6793b93a2fff3bef5496532a2d439e8635b811ecc66bb0eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:271db660-1ad8-596a-3ac2-f558fc821c82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log1pLagrangeRemainder_nonneg (domain : IntervalRat) (n : ℕ)
    (hdom : domain.lo > -1) :
    0 ≤ log1pLagrangeRemainder domain n := by
  unfold log1pLagrangeRemainder
  have hbase_pos : 0 < 1 + domain.lo := by linarith
  have hbase_not_le : ¬(1 + domain.lo ≤ 0) := not_le.mpr hbase_pos
  simp only [hbase_not_le, ↓reduceIte]
  apply div_nonneg
  · apply pow_nonneg
    exact le_max_of_le_left (abs_nonneg _)
  · apply mul_nonneg
    · have : (0 : ℚ) < n + 1 := by linarith
      linarith
    · apply pow_nonneg
      have hmin_pos : 0 < min 1 (1 + domain.lo) := lt_min one_pos hbase_pos
      linarith

/-- Taylor model for log(1+z) on domain J, centered at 0, degree n.
    Requires J.lo > -1 (domain must be in (-1, ∞)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf9e8892b67e403f0ebaf17412bc3ebafbeb336d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
