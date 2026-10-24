# linearIndep_groupLikeVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bad3ce9-08bc-93f3-2f9b-4e9899472c4f",
  "kind": "lemma",
  "lexical_name": "linearIndep_groupLikeVal",
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
  "slug": "linearindep-grouplikeval--c196e8496df8461983f0265e",
  "source": {
    "blob": "98baa3a10b601d3fec09a684ff644d2d1663735d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 165,
    "path": "GRWTSK/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c196e8496df8461983f0265eb7f6224e9f1cf1a7194cd04414f7ce03c23c4ab5",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bad3ce9-08bc-93f3-2f9b-4e9899472c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearIndep_groupLikeVal : LinearIndependent R (GroupLike.val (R := R) (A := A)) := by
  simpa using! (linearIndependent_equiv GroupLike.valEquiv).2 linearIndepOn_isGroupLikeElem

end CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/GroupLike/Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98baa3a10b601d3fec09a684ff644d2d1663735d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
