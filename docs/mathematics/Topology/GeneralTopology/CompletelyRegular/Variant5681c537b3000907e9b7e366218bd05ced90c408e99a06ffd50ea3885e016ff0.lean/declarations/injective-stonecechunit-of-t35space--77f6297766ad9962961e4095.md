# injective_stoneCechUnit_of_t35Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8b9d097-a7d4-8a39-f764-3247154d8b70",
  "kind": "lemma",
  "lexical_name": "injective_stoneCechUnit_of_t35Space",
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
  "slug": "injective-stonecechunit-of-t35space--77f6297766ad9962961e4095",
  "source": {
    "blob": "9616ec82e12eea144c4b7ff4c7242f032fb4f038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77f6297766ad9962961e4095181bbc4676acf02b91d66a34d2d5d29656b9ba3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8b9d097-a7d4-8a39-f764-3247154d8b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_stoneCechUnit_of_t35Space [T35Space X] :
    Function.Injective (stoneCechUnit : X → StoneCech X) := by
  intros a b hab
  contrapose hab
  obtain ⟨f, fc, fab⟩ := separatesPoints_continuous_of_t35Space_Icc hab
  exact fun q ↦ fab (eq_if_stoneCechUnit_eq fc q)

@[deprecated (since := "2025-04-13")]
alias injective_stoneCechUnit_of_completelyRegularSpace := injective_stoneCechUnit_of_t35Space
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9616ec82e12eea144c4b7ff4c7242f032fb4f038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
