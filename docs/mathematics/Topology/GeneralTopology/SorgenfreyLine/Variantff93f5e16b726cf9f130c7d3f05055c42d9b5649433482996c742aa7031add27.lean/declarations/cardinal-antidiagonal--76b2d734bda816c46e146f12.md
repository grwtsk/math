# cardinal_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb0a1692-d2ca-2700-53da-18982135b1e9",
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
  "slug": "cardinal-antidiagonal--76b2d734bda816c46e146f12",
  "source": {
    "blob": "b167425ffbeb3679fb09554f7bfa7fed9109a156",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b2d734bda816c46e146f1221136eee3fd6a2d4a9ce32efda3da5c4a56efdbb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb0a1692-d2ca-2700-53da-18982135b1e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–250.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variantff93f5e16b726cf9f130c7d3f05055c42d9b5649433482996c742aa7031add27.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b167425ffbeb3679fb09554f7bfa7fed9109a156` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
