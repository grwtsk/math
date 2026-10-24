# bottom_unitPole_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39d43b67-e469-fcb1-9399-36aba547dc0d",
  "kind": "theorem",
  "lexical_name": "bottom_unitPole_integral",
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
  "slug": "bottom-unitpole-integral--7e84f170a438a6e3c8e5903b",
  "source": {
    "blob": "4710a505ef0a6ee812fba7fbd78b55a6c5760826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 203,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e84f170a438a6e3c8e5903b3a584de5e1ff85d2870d9024db6e91263ae18f70",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d43b67-e469-fcb1-9399-36aba547dc0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bottom_unitPole_integral (N : ℕ) (a : ℂ)
    (ha : a ∈ openRectangle N) :
    (∫ u in leftEdge N..2, unitPole a (bottomPoint N u)) =
      Complex.log (bottomDisplacement N a 2) -
        Complex.log (bottomDisplacement N a (leftEdge N)) := by
  have hle : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hcontLine : Continuous (bottomDisplacement N a) := by
    unfold bottomDisplacement bottomPoint
    fun_prop
  have hcontLog : Continuous
      (fun u : ℝ => Complex.log (bottomDisplacement N a u)) :=
    hcontLine.clog (fun u => bottomDisplacement_mem_slitPlane N a ha u)
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le
    hle hcontLog.continuousOn
    (fun u _ => hasDerivAt_log_bottom N a ha u)
    (unitPole_boundaryIntegrable N a ha).bottom

/-- Top-edge integral as a logarithmic endpoint difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4710a505ef0a6ee812fba7fbd78b55a6c5760826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
