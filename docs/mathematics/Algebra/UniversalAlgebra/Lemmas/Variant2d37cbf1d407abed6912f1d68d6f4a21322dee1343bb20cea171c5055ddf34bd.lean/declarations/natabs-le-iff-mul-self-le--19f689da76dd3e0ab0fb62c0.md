# natAbs_le_iff_mul_self_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f69426f-08c1-5ee7-4345-948203c948a4",
  "kind": "theorem",
  "lexical_name": "natAbs_le_iff_mul_self_le",
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
  "slug": "natabs-le-iff-mul-self-le--19f689da76dd3e0ab0fb62c0",
  "source": {
    "blob": "f7f6c6725d2422c02e82e4ccc9e25d244b159f37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 38,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant2d37cbf1d407abed6912f1d68d6f4a21322dee1343bb20cea171c5055ddf34bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19f689da76dd3e0ab0fb62c07b9d35b9e20ec39cbf054487df6f7a0caf2b3df0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Lemmas/Variant2d37cbf1d407abed6912f1d68d6f4a21322dee1343bb20cea171c5055ddf34bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f69426f-08c1-5ee7-4345-948203c948a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_le_iff_mul_self_le {a b : ℤ} : a.natAbs ≤ b.natAbs ↔ a * a ≤ b * b := by
  rw [← abs_le_iff_mul_self_le, abs_eq_natAbs, abs_eq_natAbs]
  exact Int.ofNat_le.symm

end Int
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Lemmas/Variant2d37cbf1d407abed6912f1d68d6f4a21322dee1343bb20cea171c5055ddf34bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant2d37cbf1d407abed6912f1d68d6f4a21322dee1343bb20cea171c5055ddf34bd.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7f6c6725d2422c02e82e4ccc9e25d244b159f37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
