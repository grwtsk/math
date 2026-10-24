# transform_polynomial_sharp_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efd6efa0-b5ea-16cd-0619-b783c4d46704",
  "kind": "theorem",
  "lexical_name": "transform_polynomial_sharp_budget",
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
  "slug": "transform-polynomial-sharp-budget--9cba0f11e312606717f47b79",
  "source": {
    "blob": "326dc5731017e0c229248af3db2ca5f01d3889ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 45,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variant0cbff02e3edced3878ba436e659e46ddc7b7ecbb02cfa9f8381335ba5271b89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cba0f11e312606717f47b79b350dee849c664aca4107b7aa0b483b7af30e527",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variant0cbff02e3edced3878ba436e659e46ddc7b7ecbb02cfa9f8381335ba5271b89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efd6efa0-b5ea-16cd-0619-b783c4d46704`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transform_polynomial_sharp_budget (t : ℂ) (x : ℝ) (hx : 0 < x)
    (hxt : x ≤ ‖t‖) :
    ‖transformPolynomial t‖ ≤ ‖t‖ ^ 4 * sourcePolynomialBracket x := by
  have ht : 0 < ‖t‖ := hx.trans_le hxt
  have hbracket : sourcePolynomialBracket ‖t‖ ≤ sourcePolynomialBracket x := by
    unfold sourcePolynomialBracket
    gcongr
  calc
    _ ≤ ‖t‖^4 + 10*‖t‖^3 + 45*‖t‖^2 + 105*‖t‖ + 105 := polynomial_triangle t
    _ = ‖t‖^4 * sourcePolynomialBracket ‖t‖ := by
      unfold sourcePolynomialBracket
      field_simp
    _ ≤ _ := mul_le_mul_of_nonneg_left hbracket (pow_nonneg (norm_nonneg t) 4)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variant0cbff02e3edced3878ba436e659e46ddc7b7ecbb02cfa9f8381335ba5271b89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variant0cbff02e3edced3878ba436e659e46ddc7b7ecbb02cfa9f8381335ba5271b89a.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326dc5731017e0c229248af3db2ca5f01d3889ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
