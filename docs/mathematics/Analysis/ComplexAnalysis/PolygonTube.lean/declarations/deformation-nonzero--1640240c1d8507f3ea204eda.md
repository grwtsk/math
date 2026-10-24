# deformation_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eb59559-29b5-37a8-6bc9-de2c09d5f4e8",
  "kind": "theorem",
  "lexical_name": "deformation_nonzero",
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
  "slug": "deformation-nonzero--1640240c1d8507f3ea204eda",
  "source": {
    "blob": "d69089dae09fd0f1bbae5ee2c19fa164ade031c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 89,
    "path": "GRWTSK/Analysis/Complex/PolygonTube.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1640240c1d8507f3ea204eda47c28c5ed68035ef7113a0d6a19aab2b73a2a889",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PolygonTube.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eb59559-29b5-37a8-6bc9-de2c09d5f4e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deformation_nonzero {F : ℂ → ℂ} {a b u v c : ℂ} {r t lam : ℝ}
    (hF : ∀ q ∈ Icc (0 : ℝ) 1, ‖F (blend q a b) - c‖ ≤ r)
    (hu : ‖u - c‖ ≤ r) (hv : ‖v - c‖ ≤ r) (hstrict : r < ‖c‖)
    (ht : t ∈ Icc (0 : ℝ) 1) (hlam : lam ∈ Icc (0 : ℝ) 1) :
    deformation F a b u v t lam ≠ 0 := by
  intro hz
  have h := deformation_bound hF hu hv ht hlam
  rw [hz, zero_sub, norm_neg] at h
  exact (not_le_of_gt hstrict) h

/-- Adjacent deformations glue because both chains use the SAME middle vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PolygonTube.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/PolygonTube.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d69089dae09fd0f1bbae5ee2c19fa164ade031c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
