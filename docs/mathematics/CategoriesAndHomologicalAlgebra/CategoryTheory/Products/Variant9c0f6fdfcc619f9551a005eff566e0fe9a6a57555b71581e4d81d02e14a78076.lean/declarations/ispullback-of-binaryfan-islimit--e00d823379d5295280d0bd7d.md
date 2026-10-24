# isPullback_of_binaryFan_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c32ccbd5-5889-0004-28c6-24d888a7da66",
  "kind": "lemma",
  "lexical_name": "isPullback_of_binaryFan_isLimit",
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
  "slug": "ispullback-of-binaryfan-islimit--e00d823379d5295280d0bd7d",
  "source": {
    "blob": "889956f476b6ce70bcee65f8a5dd540d4050a287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e00d823379d5295280d0bd7da2ba70c2f40af29fb8782a04aedd17232eefa51f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c32ccbd5-5889-0004-28c6-24d888a7da66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPullback_of_binaryFan_isLimit (c : BinaryFan Y Z) (hc : IsLimit c) :
    IsPullback c.fst.left c.snd.left Y.hom Z.hom :=
  ⟨by simp, ⟨hc.pullbackConeEquivBinaryFanInverse⟩⟩

variable (Y Z) [HasPullback Y.hom Z.hom] [HasBinaryProduct Y Z]

/-- The product of `Y` and `Z` in `Over X` is isomorpic to `Y ×ₓ Z`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `889956f476b6ce70bcee65f8a5dd540d4050a287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
