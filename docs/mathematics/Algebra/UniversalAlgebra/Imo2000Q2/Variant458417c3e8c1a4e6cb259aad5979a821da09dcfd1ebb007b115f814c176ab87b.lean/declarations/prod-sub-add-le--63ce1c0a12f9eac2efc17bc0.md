# prod_sub_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ddd3e95-95f6-3344-b7fa-cd601fc42901",
  "kind": "lemma",
  "lexical_name": "prod_sub_add_le",
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
  "slug": "prod-sub-add-le--63ce1c0a12f9eac2efc17bc0",
  "source": {
    "blob": "09da817662e7cdc6b1711f26925abf5d79338604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 50,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2000Q2/Variant458417c3e8c1a4e6cb259aad5979a821da09dcfd1ebb007b115f814c176ab87b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63ce1c0a12f9eac2efc17bc0d9d00f2a40729a7abfa2d389ea91afcb4a53c919",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2000Q2/Variant458417c3e8c1a4e6cb259aad5979a821da09dcfd1ebb007b115f814c176ab87b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ddd3e95-95f6-3344-b7fa-cd601fc42901`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_sub_add_le {x y z : ℝ} (hx : 0 < x) (hy : 0 < y) (hz : 0 < z) :
    (x - y + z) * (y - z + x) * (z - x + y) ≤ x * y * z := by
  -- At most one of the three factors can be nonpositive, since any two of them
  -- sum to twice one of `x`, `y`, `z`. If one is nonpositive, so is the product.
  rcases le_or_gt (x - y + z) 0 with hu | hu
  · have hv : 0 < y - z + x := by linarith
    have hw : 0 < z - x + y := by linarith
    calc (x - y + z) * (y - z + x) * (z - x + y)
        ≤ 0 := mul_nonpos_of_nonpos_of_nonneg
                (mul_nonpos_of_nonpos_of_nonneg hu hv.le) hw.le
      _ ≤ x * y * z := by positivity
  rcases le_or_gt (y - z + x) 0 with hv | hv
  · have hw : 0 < z - x + y := by linarith
    calc (x - y + z) * (y - z + x) * (z - x + y)
        ≤ 0 := mul_nonpos_of_nonpos_of_nonneg
                (mul_nonpos_of_nonneg_of_nonpos hu.le hv) hw.le
      _ ≤ x * y * z := by positivity
  rcases le_or_gt (z - x + y) 0 with hw | hw
  · calc (x - y + z) * (y - z + x) * (z - x + y)
        ≤ 0 := mul_nonpos_of_nonneg_of_nonpos (mul_nonneg hu.le hv.le) hw
      _ ≤ x * y * z := by positivity
  -- All three factors are positive. By AM-GM each pairwise product is bounded by a square:
  have h1 : (x - y + z) * (y - z + x) ≤ x ^ 2 := by linarith [sq_nonneg (y - z)]
  have h2 : (y - z + x) * (z - x + y) ≤ y ^ 2 := by linarith [sq_nonneg (z - x)]
  have h3 : (z - x + y) * (x - y + z) ≤ z ^ 2 := by linarith [sq_nonneg (x - y)]
  -- Multiplying the three bounds gives the squared inequality, and both sides are positive.
  refine le_of_sq_le_sq ?_ (by positivity)
  calc ((x - y + z) * (y - z + x) * (z - x + y)) ^ 2
      = ((x - y + z) * (y - z + x)) * ((y - z + x) * (z - x + y))
          * ((z - x + y) * (x - y + z)) := by ring
    _ ≤ x ^ 2 * y ^ 2 * z ^ 2 := by gcongr
    _ = (x * y * z) ^ 2 := by ring

/-- **IMO 2000 Q2**. If `A`, `B`, `C > 0` and `ABC = 1`, then
`(A - 1 + 1 / B)(B - 1 + 1 / C)(C - 1 + 1 / A) ≤ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2000Q2/Variant458417c3e8c1a4e6cb259aad5979a821da09dcfd1ebb007b115f814c176ab87b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2000Q2/Variant458417c3e8c1a4e6cb259aad5979a821da09dcfd1ebb007b115f814c176ab87b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09da817662e7cdc6b1711f26925abf5d79338604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
