# PrimitiveAdditiveTriple.freyT0ContactPullback_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52f1f7d5-67ab-eaad-b6ef-16a1aca5b799",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyT0ContactPullback_X",
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
  "slug": "primitiveadditivetriple-freyt0contactpullback-x--4be6a9d1e59ee319ab6ba7e5",
  "source": {
    "blob": "2fcff964376ca959654c63336c96d5ad4a2d4b88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be6a9d1e59ee319ab6ba7e5fd0a6787a32cc4a91f9eb7de66a178bbb0039111",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52f1f7d5-67ab-eaad-b6ef-16a1aca5b799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyT0ContactPullback_X (t : PrimitiveAdditiveTriple) :
    t.freyT0ContactPullback (t.freyQuadraticX 2) =
      freyContactScalar (-(t.a : ℚ) * (t.b : ℚ)) * t.freyTaContactInverseX := by
  have ha : (t.a : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.a_pos
  have hb : (t.b : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.b_pos
  have hc : (t.c : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt t.c_pos
  have h0 : -(t.b : ℚ) = (-(t.a : ℚ) * (t.b : ℚ)) * (t.a : ℚ)⁻¹ := by
    field_simp [ha] <;> ring
  have h2 : ((t.b : ℚ) * (t.c : ℚ))⁻¹ * t.freyT0ContactScale ^ 2 =
      -((-(t.a : ℚ) * (t.b : ℚ)) * (t.a : ℚ)⁻¹ ^ 2 *
        ((t.a : ℚ) * (t.c : ℚ))⁻¹) := by
    unfold PrimitiveAdditiveTriple.freyT0ContactScale
    field_simp [ha, hb, hc] <;> ring
  change freyContactRescale t.freyT0ContactScale (t.freyQuadraticX 2) = _
  rw [t.freyQuadraticX_Tb_expansion]
  simp only [map_add, map_mul, map_pow, freyContactRescale_scalar,
    freyContactRescale_parameter]
  calc
    _ = freyContactScalar (-(t.b : ℚ)) +
        freyContactScalar (((t.b : ℚ) * (t.c : ℚ))⁻¹ * t.freyT0ContactScale ^ 2) *
          freyJetParameter ^ 2 := by simp only [map_mul, map_pow]; ring
    _ = _ := by
      rw [h0, h2]
      unfold PrimitiveAdditiveTriple.freyTaContactInverseX
      simp only [map_mul, map_neg, map_pow]
      ring

/-- The pulled-back target Y matches ab*Y/X^2, not an unrelated chosen scale.
The equality is order TWO; higher odd correction terms are not discarded globally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionContact.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fcff964376ca959654c63336c96d5ad4a2d4b88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
