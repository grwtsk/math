# meromorphicTrailingCoeffAt_id_sub_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:670ef3eb-4a21-2886-c10a-f2489c1f34e5",
  "kind": "theorem",
  "lexical_name": "meromorphicTrailingCoeffAt_id_sub_const",
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
  "slug": "meromorphictrailingcoeffat-id-sub-const--db5affa32c1fd3ed68e287e7",
  "source": {
    "blob": "83ddc065af2aa54cff11436693db6cdad84a4928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 176,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db5affa32c1fd3ed68e287e7c663a55a26ca978b0964a07a886f7ecc9d46170d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:670ef3eb-4a21-2886-c10a-f2489c1f34e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicTrailingCoeffAt_id_sub_const [DecidableEq 𝕜] {x y : 𝕜} :
    meromorphicTrailingCoeffAt (· - y) x = if x = y then 1 else x - y := by
  by_cases h : x = y
  · simp_all only [sub_self, ite_true]
    apply AnalyticAt.meromorphicTrailingCoeffAt_of_ne_zero_of_eq_nhdsNE (n := 1) (by fun_prop)
      (by apply one_ne_zero)
    simp
  · simp_all only [ite_false]
    apply AnalyticAt.meromorphicTrailingCoeffAt_of_ne_zero (by fun_prop)
    simp_all [sub_ne_zero]

/-!
## Congruence Lemma
-/

/--
If two functions agree in a punctured neighborhood, then their trailing coefficients agree.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ddc065af2aa54cff11436693db6cdad84a4928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
