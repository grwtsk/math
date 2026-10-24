# content_mul_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9441cbf3-bfba-7937-5f80-ce608644014e",
  "kind": "theorem",
  "lexical_name": "content_mul_aux",
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
  "slug": "content-mul-aux--b2b4f803e7a311fb594b09b5",
  "source": {
    "blob": "69359f8cb32856f27864d0d70177d22b20b6daf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 355,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2b4f803e7a311fb594b09b502adc93ff2e6fa83727529cc4b15e5483e478c4f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9441cbf3-bfba-7937-5f80-ce608644014e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem content_mul_aux {p q : R[X]} :
    GCDMonoid.gcd (p * q).eraseLead.content p.leadingCoeff =
      GCDMonoid.gcd (p.eraseLead * q).content p.leadingCoeff := by
  rw [gcd_comm (content _) _, gcd_comm (content _) _]
  apply gcd_content_eq_of_dvd_sub
  rw [← self_sub_C_mul_X_pow, ← self_sub_C_mul_X_pow, sub_mul, sub_sub, add_comm, sub_add,
    sub_sub_cancel, leadingCoeff_mul, RingHom.map_mul, mul_assoc, mul_assoc]
  apply dvd_sub (Dvd.intro _ rfl) (Dvd.intro _ rfl)
#align polynomial.content_mul_aux Polynomial.content_mul_aux

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69359f8cb32856f27864d0d70177d22b20b6daf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
