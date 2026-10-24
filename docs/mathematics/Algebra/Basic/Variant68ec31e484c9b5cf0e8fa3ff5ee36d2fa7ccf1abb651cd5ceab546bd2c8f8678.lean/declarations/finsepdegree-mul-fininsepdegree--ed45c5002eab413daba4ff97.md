# finSepDegree_mul_finInsepDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:059e3956-4088-d56a-7ec9-4ff7cf53a24a",
  "kind": "theorem",
  "lexical_name": "finSepDegree_mul_finInsepDegree",
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
  "slug": "finsepdegree-mul-fininsepdegree--ed45c5002eab413daba4ff97",
  "source": {
    "blob": "527923b4d89f8f1508cf07b72b52e1020363cec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 596,
    "path": "GRWTSK/Algebra/Basic/Variant68ec31e484c9b5cf0e8fa3ff5ee36d2fa7ccf1abb651cd5ceab546bd2c8f8678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed45c5002eab413daba4ff9721008cddc346b14bd35c53b3639233b86ca20f4c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant68ec31e484c9b5cf0e8fa3ff5ee36d2fa7ccf1abb651cd5ceab546bd2c8f8678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:059e3956-4088-d56a-7ec9-4ff7cf53a24a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finSepDegree_mul_finInsepDegree : finSepDegree F E * finInsepDegree F E = finrank F E := by
  by_cases halg : Algebra.IsAlgebraic F E
  · have := congr_arg Cardinal.toNat (sepDegree_mul_insepDegree F E)
    rwa [Cardinal.toNat_mul, ← finSepDegree_eq F E] at this
  rw [finInsepDegree, finrank_of_infinite_dimensional (K := F) (V := E) fun _ ↦
      halg (Algebra.IsAlgebraic.of_finite F E),
    finrank_of_infinite_dimensional (K := separableClosure F E) (V := E) fun _ ↦
      halg (.trans _ (separableClosure F E) _),
    mul_zero]

end Field

namespace separableClosure

variable [Algebra E K] [IsScalarTower F E K] {F E}

/-- If `K / E / F` is a field extension tower, such that `E / F` is algebraic and `K / E`
is separable, then `E` adjoin `separableClosure F K` is equal to `K`. It is a special case of
`separableClosure.adjoin_eq_of_isAlgebraic`, and is an intermediate result used to prove it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant68ec31e484c9b5cf0e8fa3ff5ee36d2fa7ccf1abb651cd5ceab546bd2c8f8678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant68ec31e484c9b5cf0e8fa3ff5ee36d2fa7ccf1abb651cd5ceab546bd2c8f8678.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `527923b4d89f8f1508cf07b72b52e1020363cec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
