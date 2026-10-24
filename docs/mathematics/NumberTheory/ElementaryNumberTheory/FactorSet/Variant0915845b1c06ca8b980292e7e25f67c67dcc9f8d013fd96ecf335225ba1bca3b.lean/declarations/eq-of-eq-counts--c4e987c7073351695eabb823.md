# eq_of_eq_counts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69b596f3-eb2b-a4f4-09ad-58f98c29dbd7",
  "kind": "theorem",
  "lexical_name": "eq_of_eq_counts",
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
  "slug": "eq-of-eq-counts--c4e987c7073351695eabb823",
  "source": {
    "blob": "3cda168dc997f94708de17fc0deb391b229655ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 309,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variant0915845b1c06ca8b980292e7e25f67c67dcc9f8d013fd96ecf335225ba1bca3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4e987c7073351695eabb82330c595bd14099e2782fc74ecc0422092b5b4c1a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variant0915845b1c06ca8b980292e7e25f67c67dcc9f8d013fd96ecf335225ba1bca3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69b596f3-eb2b-a4f4-09ad-58f98c29dbd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_eq_counts {a b : Associates α} (ha : a ≠ 0) (hb : b ≠ 0)
    (h : ∀ p : Associates α, Irreducible p → p.count a.factors = p.count b.factors) : a = b :=
  eq_of_factors_eq_factors (eq_factors_of_eq_counts ha hb h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variant0915845b1c06ca8b980292e7e25f67c67dcc9f8d013fd96ecf335225ba1bca3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variant0915845b1c06ca8b980292e7e25f67c67dcc9f8d013fd96ecf335225ba1bca3b.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cda168dc997f94708de17fc0deb391b229655ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
