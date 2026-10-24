# chart_modulus_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7067b617-880c-facf-025b-a4e900c4b3ec",
  "kind": "theorem",
  "lexical_name": "chart_modulus_bound",
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
  "slug": "chart-modulus-bound--427f7790d64705789f4a1228",
  "source": {
    "blob": "54f9656ab7ecebbffb124712068f55c8661ce3aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:427f7790d64705789f4a1228d2e7897a0bf35f40520a8a1425769e126ff3484e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7067b617-880c-facf-025b-a4e900c4b3ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chart_modulus_bound (N : ℕ) (hN : 2 ≤ N) (negative : Bool) (z : ℂ)
    (member : z ∈ closedBall (chartCenter N negative) (3 : ℝ)) :
    ‖riemannZeta z‖ ≤ ((N : ℝ) + 2) ^ 3 := by
  apply norm_zeta_le_cube_on_disk N hN (chartCenter N negative) z _ member
  cases negative <;> simp [chartCenter]

/-- Both signed outer charts already have a proved pole-avoidance domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicReflectionSupplier.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f9656ab7ecebbffb124712068f55c8661ce3aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
