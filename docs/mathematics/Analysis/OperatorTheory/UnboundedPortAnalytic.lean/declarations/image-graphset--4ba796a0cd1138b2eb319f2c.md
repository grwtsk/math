# image_graphSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "909e3f7520f37d7c5742ec7db796b7a49c4ef31c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/Analysis/Operator/UnboundedPortAnalytic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:558cb26c-74c8-ba1b-22da-e2bcde0c82bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1284a165-d409-012c-3652-c2f56ebcd194",
  "kind": "theorem",
  "lexical_name": "image_graphSet",
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
  "slug": "image-graphset--4ba796a0cd1138b2eb319f2c",
  "source": {
    "blob": "909e3f7520f37d7c5742ec7db796b7a49c4ef31c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 77,
    "path": "GRWTSK/Analysis/Operator/UnboundedPortAnalytic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ba796a0cd1138b2eb319f2cdd4df3f4419e75f2ad0ae727c690ed5733a7c14f",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1284a165-d409-012c-3652-c2f56ebcd194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_graphSet (P : ContinuousFramedEquivalence A B) :
    P.pairFrame '' graphSet A = graphSet B := by
  ext q
  constructor
  · rintro ⟨p, ⟨x, rfl⟩, rfl⟩
    refine ⟨P.toAlgebraic.domainEquiv x, ?_⟩
    apply Prod.ext
    · rfl
    · exact P.toAlgebraic.intertwines_apply x
  · rintro ⟨y, rfl⟩
    let x : A.domain := P.toAlgebraic.domainEquiv.symm y
    have hy : P.toAlgebraic.domainEquiv x = y :=
      P.toAlgebraic.domainEquiv.apply_symm_apply y
    refine ⟨(x.1, A.apply x), ⟨x, rfl⟩, ?_⟩
    apply Prod.ext
    · exact congrArg Subtype.val hy
    · change P.toAlgebraic.frame (A.apply x) = B.apply y
      simpa only [hy] using P.toAlgebraic.intertwines_apply x

/-- Closed-graph status is equivalent under a continuous framed operator equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/UnboundedPortAnalytic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/UnboundedPortAnalytic.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `909e3f7520f37d7c5742ec7db796b7a49c4ef31c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
