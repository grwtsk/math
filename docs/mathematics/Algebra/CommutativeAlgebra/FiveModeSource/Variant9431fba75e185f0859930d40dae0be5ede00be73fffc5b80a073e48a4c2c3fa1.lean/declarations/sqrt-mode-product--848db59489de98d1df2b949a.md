# sqrt_mode_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2a9e67f-9e14-4cfb-f498-353b74f4fb11",
  "kind": "theorem",
  "lexical_name": "sqrt_mode_product",
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
  "slug": "sqrt-mode-product--848db59489de98d1df2b949a",
  "source": {
    "blob": "2e24d7fd3cb4bbe396890cb946bb90f3b62c1225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 109,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSource/Variant9431fba75e185f0859930d40dae0be5ede00be73fffc5b80a073e48a4c2c3fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:848db59489de98d1df2b949a66420a39bc87bfa3dfca79da0c6dd2d61a817194",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeSource/Variant9431fba75e185f0859930d40dae0be5ede00be73fffc5b80a073e48a4c2c3fa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2a9e67f-9e14-4cfb-f498-353b74f4fb11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_mode_product (A : ℝ) (hA : 0 < A) (i : Fin 5) :
    Real.sqrt (2 / modeWeight i) * Real.sqrt (modeWeight i / (2*A)) =
      1 / Real.sqrt A := by
  have hwp := modeWeight_pos i
  rw [← Real.sqrt_mul (by positivity : 0 ≤ 2 / modeWeight i)]
  have hw := (modeWeight_pos i).ne'
  have h : (2 / modeWeight i) * (modeWeight i / (2*A)) = 1 / A := by
    field_simp
  rw [h, Real.sqrt_div (by norm_num : (0 : ℝ) ≤ 1)]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeSource/Variant9431fba75e185f0859930d40dae0be5ede00be73fffc5b80a073e48a4c2c3fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeSource/Variant9431fba75e185f0859930d40dae0be5ede00be73fffc5b80a073e48a4c2c3fa1.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e24d7fd3cb4bbe396890cb946bb90f3b62c1225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
