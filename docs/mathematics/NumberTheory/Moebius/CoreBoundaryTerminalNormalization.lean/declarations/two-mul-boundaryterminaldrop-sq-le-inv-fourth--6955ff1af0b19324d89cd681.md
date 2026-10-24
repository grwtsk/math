# two_mul_boundaryTerminalDrop_sq_le_inv_fourth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8453eafb-3841-48ea-2f38-06099f61896b",
  "kind": "theorem",
  "lexical_name": "two_mul_boundaryTerminalDrop_sq_le_inv_fourth",
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
  "slug": "two-mul-boundaryterminaldrop-sq-le-inv-fourth--6955ff1af0b19324d89cd681",
  "source": {
    "blob": "e052eba4172554145d40aa7f8a22ba430dba1a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6955ff1af0b19324d89cd681094fcefe6b31a8d5c82df9b1e85554cd41a99c7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8453eafb-3841-48ea-2f38-06099f61896b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_boundaryTerminalDrop_sq_le_inv_fourth
    (j : ℕ) :
    (2 * boundaryTerminalDrop j) ^ 2 ≤
      (((2 ^ j : ℕ) : ℝ)⁻¹) ^ 4 := by
  have h := (two_mul_boundaryTerminalDrop_le_inv_sq j).2
  have hleft : 0 ≤ 2 * boundaryTerminalDrop j :=
    (two_mul_boundaryTerminalDrop_le_inv_sq j).1
  have hright :
      0 ≤ (((2 ^ j : ℕ) : ℝ)⁻¹) ^ 2 := by positivity
  have hsquare :
      (2 * boundaryTerminalDrop j) ^ 2 ≤
        ((((2 ^ j : ℕ) : ℝ)⁻¹) ^ 2) ^ 2 :=
    (sq_le_sq₀ hleft hright).2 h
  simpa [pow_mul] using hsquare

/-- On the two scales excluded by `j+2 <= 2^j`, the genuine exceptional
boundary set is empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e052eba4172554145d40aa7f8a22ba430dba1a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
