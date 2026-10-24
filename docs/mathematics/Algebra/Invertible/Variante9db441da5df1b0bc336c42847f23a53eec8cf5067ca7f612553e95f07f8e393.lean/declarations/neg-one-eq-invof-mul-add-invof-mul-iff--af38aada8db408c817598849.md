# neg_one_eq_invOf_mul_add_invOf_mul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:965e1b66-5d52-b806-a0f9-b7d9d9aab673",
  "kind": "lemma",
  "lexical_name": "neg_one_eq_invOf_mul_add_invOf_mul_iff",
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
  "slug": "neg-one-eq-invof-mul-add-invof-mul-iff--af38aada8db408c817598849",
  "source": {
    "blob": "625934981d06798456d574f74c3920f4157e3553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 111,
    "path": "GRWTSK/Algebra/Invertible/Variante9db441da5df1b0bc336c42847f23a53eec8cf5067ca7f612553e95f07f8e393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af38aada8db408c81759884960f26eaf57375b39b5ac952da46cfc07b038ee6c",
  "verification": {
    "reference": "docs/verification/Algebra/Invertible/Variante9db441da5df1b0bc336c42847f23a53eec8cf5067ca7f612553e95f07f8e393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:965e1b66-5d52-b806-a0f9-b7d9d9aab673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma neg_one_eq_invOf_mul_add_invOf_mul_iff [Ring R] {a b : R} [Invertible a]
    [Invertible b] [Invertible (a + b)] : ⅟(a + b) = ⅟a + ⅟b ↔ -1 = ⅟a * b + ⅟b * a := by
  calc ⅟(a + b) = ⅟a + ⅟b
      ↔ ⅟(a + b) * (a + b) = (⅟a + ⅟b) * (a + b) := by rw [mul_left_inj_of_invertible]
    _ ↔ -1 = ⅟a * b + ⅟b * a := by grind [invOf_mul_self, mul_add, add_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Invertible/Variante9db441da5df1b0bc336c42847f23a53eec8cf5067ca7f612553e95f07f8e393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Invertible/Variante9db441da5df1b0bc336c42847f23a53eec8cf5067ca7f612553e95f07f8e393.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625934981d06798456d574f74c3920f4157e3553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
