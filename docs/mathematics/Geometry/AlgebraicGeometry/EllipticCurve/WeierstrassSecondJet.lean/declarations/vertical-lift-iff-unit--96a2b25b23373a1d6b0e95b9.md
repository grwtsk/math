# vertical_lift_iff_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:671ca6f2-4e99-da27-0799-08678624673d",
  "kind": "theorem",
  "lexical_name": "vertical_lift_iff_unit",
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
  "slug": "vertical-lift-iff-unit--96a2b25b23373a1d6b0e95b9",
  "source": {
    "blob": "5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96a2b25b23373a1d6b0e95b903ed5802802cf610ebe2b107448dd9306c83dc30",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:671ca6f2-4e99-da27-0799-08678624673d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertical_lift_iff_unit (A B : R) :
    HasVerticalLift R (model R A B) ↔ IsUnit B := by
  constructor
  · rintro ⟨x,y,hx,hy,he⟩
    obtain ⟨a,rfl⟩ := (truncate_fiber R x 0 0).mp hx
    obtain ⟨b,rfl⟩ := (truncate_fiber R y 0 1).mp hy
    have hh := ((equation_iff R A B 0 1 a b).mp he).2
    have hb : B*a=1 := by simpa using hh
    exact isUnit_iff_exists_inv.mpr ⟨a,hb⟩
  · intro hB
    obtain ⟨a,ha⟩ := isUnit_iff_exists_inv.mp hB
    refine ⟨jet R 0 0 a,jet R 0 1 0,?_,?_,?_⟩
    · exact truncate_jet R 0 0 a
    · exact truncate_jet R 0 1 0
    · rw [equation_iff]
      simpa using And.intro (mul_zero B) ha

/-- The obstruction is the surviving square of the parameter, for EVERY correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
