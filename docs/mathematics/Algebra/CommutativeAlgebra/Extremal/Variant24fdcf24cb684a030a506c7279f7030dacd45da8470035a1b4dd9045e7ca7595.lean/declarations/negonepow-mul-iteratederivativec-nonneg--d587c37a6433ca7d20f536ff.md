# negOnePow_mul_iterateDerivativeC_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:787d0676-ad5c-fe54-db17-bd1020f3d052",
  "kind": "theorem",
  "lexical_name": "negOnePow_mul_iterateDerivativeC_nonneg",
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
  "slug": "negonepow-mul-iteratederivativec-nonneg--d587c37a6433ca7d20f536ff",
  "source": {
    "blob": "73633197ac87904f77938b2e313c01efdb70acc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 264,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d587c37a6433ca7d20f536ffb8e059dc1356f228cf43fba38387e02969ed48a5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:787d0676-ad5c-fe54-db17-bd1020f3d052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem negOnePow_mul_iterateDerivativeC_nonneg
    {n k i : ℕ} (hi : i ≤ n) {x : ℝ} (hx : 1 ≤ x) :
    0 ≤ (-1) ^ i * iterateDerivativeC n k x i := by
  rw [iterateDerivativeC, ← mul_assoc]
  refine mul_nonneg ?_ (Finset.sum_nonneg fun t _ => ?_)
  · rw [← mul_assoc, mul_comm (a := (-1) ^ i), mul_assoc]
    exact le_of_lt <| mul_pos (Nat.cast_pos.mpr <| Nat.factorial_pos k)
      (negOnePow_mul_leadingCoeffC_pos hi)
  · exact Finset.prod_nonneg (fun a _ => by grind [show node n a ≤ 1 from cos_le_one _])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24fdcf24cb684a030a506c7279f7030dacd45da8470035a1b4dd9045e7ca7595.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73633197ac87904f77938b2e313c01efdb70acc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
