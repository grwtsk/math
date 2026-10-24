# norm_sub_le_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:835efe5d-25e2-0230-9282-e951d7135f95",
  "kind": "lemma",
  "lexical_name": "norm_sub_le_span",
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
  "slug": "norm-sub-le-span--99e4bc328eb6c3016cd30731",
  "source": {
    "blob": "345b46e0a87abbdab253b6720ecc0f3558aaabf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99e4bc328eb6c3016cd30731bf9aa2b058c443c41c248c55c18dc78fc48e4c0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:835efe5d-25e2-0230-9282-e951d7135f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sub_le_span (b : Rectangle) {z w : ℂ}
    (hz : z ∈ b.carrier) (hw : w ∈ b.carrier) : ‖z - w‖ ≤ (b.span : ℝ) := by
  have hx : |z.re - w.re| ≤ (b.right : ℝ) - (b.left : ℝ) := by
    apply abs_le.mpr
    constructor <;> linarith [hz.1, hz.2.1, hw.1, hw.2.1]
  have hy : |z.im - w.im| ≤ (b.top : ℝ) - (b.bottom : ℝ) := by
    apply abs_le.mpr
    constructor <;> linarith [hz.2.2.1, hz.2.2.2, hw.2.2.1, hw.2.2.2]
  calc
    ‖z - w‖ ≤ |z.re - w.re| + |z.im - w.im| := by
      simpa only [Complex.sub_re, Complex.sub_im] using
        Complex.norm_le_abs_re_add_abs_im (z - w)
    _ ≤ ((b.right : ℝ) - (b.left : ℝ)) + ((b.top : ℝ) - (b.bottom : ℝ)) :=
      add_le_add hx hy
    _ = (b.span : ℝ) := by simp only [span, Rat.cast_add, Rat.cast_sub]

end Rectangle

/-- Every target point lies epsilon inside at least one disk. The chosen index may
vary with the point. This is NOT an assertion that one disk contains the root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverClearance.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345b46e0a87abbdab253b6720ecc0f3558aaabf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
