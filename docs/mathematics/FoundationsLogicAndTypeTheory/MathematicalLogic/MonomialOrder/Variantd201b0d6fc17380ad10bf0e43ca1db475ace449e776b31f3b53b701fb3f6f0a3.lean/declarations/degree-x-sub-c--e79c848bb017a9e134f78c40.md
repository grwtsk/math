# degree_X_sub_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ecdcd74-51bf-80c3-0333-dce09e8268cf",
  "kind": "lemma",
  "lexical_name": "degree_X_sub_C",
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
  "slug": "degree-x-sub-c--e79c848bb017a9e134f78c40",
  "source": {
    "blob": "df090d867b53dc960d01df2e219e5e17380e2421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1458,
    "line": 1454,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e79c848bb017a9e134f78c406003e359e9981dc9d2184c06a531889335def84c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ecdcd74-51bf-80c3-0333-dce09e8268cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1454–1458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma degree_X_sub_C [Nontrivial R]
    {ι : Type*} (m : MonomialOrder ι) (i : ι) (r : R) :
    m.degree (X i - C r) = single i 1 := by
  rw [sub_eq_add_neg, ← map_neg, degree_X_add_C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd201b0d6fc17380ad10bf0e43ca1db475ace449e776b31f3b53b701fb3f6f0a3.lean#L1454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df090d867b53dc960d01df2e219e5e17380e2421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
