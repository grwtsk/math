# native_series_hasDerivAt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b383ef2-3a20-8e04-785b-d1de99175a5d",
  "kind": "theorem",
  "lexical_name": "native_series_hasDerivAt_two",
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
  "slug": "native-series-hasderivat-two--88c3108b36a8dc8061fb119a",
  "source": {
    "blob": "4be523cff9c65c4f05698ec6003641d3cbed8b65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88c3108b36a8dc8061fb119af9ed32ef092e8b59b10f7e2184aa0d97458f0793",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b383ef2-3a20-8e04-785b-d1de99175a5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_series_hasDerivAt_two :
    HasDerivAt (LSeries (fun n : ℕ ↦ (vonMangoldt n : ℂ)))
      (-(dirichletMoment 1 : ℂ)) 2 := by
  have hab : LSeries.abscissaOfAbsConv (fun n : ℕ ↦ (vonMangoldt n : ℂ)) <
      (2 : ℂ).re := lt_of_le_of_lt mangoldt_abscissa_le_one
    (by exact_mod_cast (show (1 : ℝ) < 2 by norm_num))
  have h := LSeries_hasDerivAt hab
  simpa only [show LSeries.logMul (fun n : ℕ ↦ (vonMangoldt n : ℂ)) =
      LSeries.logMul^[1] (fun n : ℕ ↦ (vonMangoldt n : ℂ)) by rfl,
    log_moment_series_eq] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variantc916d761b81b7c9f41cb85270fdf8106569739bca4344fed4f6afd88061b7a90.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be523cff9c65c4f05698ec6003641d3cbed8b65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
