# coversTop_iff_of_isTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30872ff792de98589d5b2f6b53fbd772b422f62c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e294ec8a-a444-c907-073b-87edffdfc600",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec1bda42-0195-924b-621f-176592379450",
  "kind": "lemma",
  "lexical_name": "coversTop_iff_of_isTerminal",
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
  "slug": "coverstop-iff-of-isterminal--8a387ea293d842741cf0ed28",
  "source": {
    "blob": "30872ff792de98589d5b2f6b53fbd772b422f62c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a387ea293d842741cf0ed28b771db9bc7b6f0f2b6713ea4d4137e55e6e2e1d3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec1bda42-0195-924b-621f-176592379450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coversTop_iff_of_isTerminal (X : C) (hX : IsTerminal X)
    {I : Type*} (Y : I → C) :
    J.CoversTop Y ↔ Sieve.ofObjects Y X ∈ J X := by
  constructor
  · tauto
  · intro h W
    apply J.superset_covering _ (J.pullback_stable (hX.from W) h)
    rintro T a ⟨i, ⟨b⟩⟩
    exact ⟨i, ⟨b⟩⟩

namespace CoversTop

variable {J}
variable {I : Type*} {Y : I → C} (hY : J.CoversTop Y)
include hY

/-- The cover of any object `W : C` attached to a family of objects `Y` that satisfy
`J.CoversTop Y` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30872ff792de98589d5b2f6b53fbd772b422f62c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
