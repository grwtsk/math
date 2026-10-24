# total_gluing_correction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6efb8e18-6995-3f6c-5530-cf3c438c3865",
  "kind": "theorem",
  "lexical_name": "total_gluing_correction",
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
  "slug": "total-gluing-correction--d9c5fcdc1121cad0d3f7234f",
  "source": {
    "blob": "65349fabf854c1db20573d17bd7d9b7651a2a616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9c5fcdc1121cad0d3f7234f319858cdc84c9459ecd848fd50dec82365273772",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6efb8e18-6995-3f6c-5530-cf3c438c3865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem total_gluing_correction (copies : V → ℕ)
    (angle : (v : V) → Fin (copies v) → ℝ) :
    totalDeficit copies angle = totalBoundaryTurn copies angle +
      (2 * (Fintype.card V : ℝ) - (totalBoundaryCopies copies : ℝ)) * Real.pi := by
  classical
  unfold totalDeficit totalBoundaryTurn totalBoundaryCopies
  simp_rw [vertex_gluing_correction]
  rw [Finset.sum_add_distrib, ← Finset.sum_mul, Finset.sum_sub_distrib]
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul, Nat.cast_sum]
  ring

/-- The V=8, B=14 disk-net accounting adds the missing second 2*pi. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65349fabf854c1db20573d17bd7d9b7651a2a616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
