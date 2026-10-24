# top_fixedByFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4899bb84-ccac-1e6d-cd18-194b52d4b0b1",
  "kind": "theorem",
  "lexical_name": "top_fixedByFinite",
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
  "slug": "top-fixedbyfinite--13db6b1487e08739d8ad2ed3",
  "source": {
    "blob": "779b146e514c11f38bf56ceb3b8daada005d455e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13db6b1487e08739d8ad2ed3bf0bf86253fd10394edc968c444e8967c613108f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4899bb84-ccac-1e6d-cd18-194b52d4b0b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem top_fixedByFinite {K L : Type*} [Field K] [Field L] [Algebra K L] :
    ⊤ ∈ fixedByFinite K L :=
  ⟨⊥, IntermediateField.finiteDimensional_bot K L, IntermediateField.fixingSubgroup.bot⟩
#align top_fixed_by_finite top_fixedByFinite

/-- If `E1` and `E2` are finite-dimensional intermediate fields, then so is their compositum.
This rephrases a result already in mathlib so that it is compatible with our type classes -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variant81e5eeb0afc551f495c8801c64b9fc3ae95743aa66fb243a9284829a8af65afa.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `779b146e514c11f38bf56ceb3b8daada005d455e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
