# rawDirectionalMoment_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22927ac6394b40e2555b84edddb743a9af80b540",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 766,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49f8204c-3be4-f9ef-965b-bfce05a0ccf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b5b4c39-45ac-7214-3c33-474137d039df",
  "kind": "theorem",
  "lexical_name": "rawDirectionalMoment_four",
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
  "slug": "rawdirectionalmoment-four--ad22ec5aac061eb488d76eeb",
  "source": {
    "blob": "22927ac6394b40e2555b84edddb743a9af80b540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 779,
    "line": 766,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad22ec5aac061eb488d76eebea93187220556d2f061d98b4876bac4f3ebd4a4a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b5b4c39-45ac-7214-3c33-474137d039df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–779.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawDirectionalMoment_four
    (theta : E)
    (d : Fin 4 → E) :
    F.rawDirectionalMoment theta 4 d =
      ∑ i : I,
        F.probability theta i *
          F.statistic i (d 0) *
          F.statistic i (d 1) *
          F.statistic i (d 2) *
          F.statistic i (d 3) := by
  classical
  simp [rawDirectionalMoment, Fin.prod_univ_succ, mul_assoc]

/-- Expand the centered fourth moment into raw moments and centroids. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderFourRecursiveCumulant/Variante37a2b6ac76f662a903cb8ef31e172012e1a1e474ec3a1729a31ed54a2c5760b.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22927ac6394b40e2555b84edddb743a9af80b540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
