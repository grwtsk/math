# cardinal_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf1aaa2e-be4a-25c9-c78a-939576f4520c",
  "kind": "theorem",
  "lexical_name": "cardinal_antidiagonal",
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
  "slug": "cardinal-antidiagonal--068a1dc471b18e1d59ad56ab",
  "source": {
    "blob": "23582fb2902b062dd26917e7d8fdcd44b6ef901b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:068a1dc471b18e1d59ad56abf1e44c8405d3d16a5914cc454b9c3d1bf83af7d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf1aaa2e-be4a-25c9-c78a-939576f4520c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_antidiagonal (c : ℝₗ) : #{x : ℝₗ × ℝₗ | x.1 + x.2 = c} = 𝔠 := by
  rw [← Cardinal.mk_real]
  exact Equiv.cardinal_eq ⟨fun x ↦ toReal x.1.1,
    fun x ↦ ⟨(toReal.symm x, c - toReal.symm x), by simp⟩,
    fun ⟨x, hx⟩ ↦ by ext <;> simp [← hx.out], fun x ↦ rfl⟩

/-- Any subset of an antidiagonal `{(x, y) : ℝₗ × ℝₗ| x + y = c}` is a closed set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant6b5cbf4fe0f5c206aa4a5cf052a98ca1a0aca3277728bc31a044c6384ca6137a.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23582fb2902b062dd26917e7d8fdcd44b6ef901b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
