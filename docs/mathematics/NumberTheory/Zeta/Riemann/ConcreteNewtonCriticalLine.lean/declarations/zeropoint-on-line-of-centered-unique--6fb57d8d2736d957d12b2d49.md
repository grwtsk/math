# zeroPoint_on_line_of_centered_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:636fa2d0-15a0-3d9a-20ac-ffbb932b5202",
  "kind": "theorem",
  "lexical_name": "zeroPoint_on_line_of_centered_unique",
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
  "slug": "zeropoint-on-line-of-centered-unique--6fb57d8d2736d957d12b2d49",
  "source": {
    "blob": "f269992d7586cbe05ee0a6018e1a3685f3f706bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fb57d8d2736d957d12b2d49becb1442c51eee097540d832e8d241d03f2f1130",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:636fa2d0-15a0-3d9a-20ac-ffbb932b5202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroPoint_on_line_of_centered_unique (c : ℂ) (r : ℝ) (z : ZeroPoint)
    (centerOnLine : c.re = 1 / 2) (located : ‖z.1 - c‖ ≤ r)
    (unique : ∀ w : ZeroPoint, ‖w.1 - c‖ ≤ r → w = z) : z.1.re = 1 / 2 := by
  let reflected : ZeroPoint := ⟨criticalReflection z.1, z.2.critical_reflection⟩
  have member : z.1 ∈ closedBall c r := by
    simpa only [mem_closedBall, dist_eq_norm] using located
  have reflectedMember := reflection_mem_centered_closedBall c z.1 r centerOnLine member
  have reflectedLocated : ‖reflected.1 - c‖ ≤ r := by
    simpa only [reflected, mem_closedBall, dist_eq_norm] using reflectedMember
  have equal : reflected = z := unique reflected reflectedLocated
  have fixed : criticalReflection z.1 = z.1 := congrArg Subtype.val equal
  exact (reflection_fixed_iff z.1).mp fixed

/-- Exact centering is proved from the inherited rational record, not a decimal display. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f269992d7586cbe05ee0a6018e1a3685f3f706bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
