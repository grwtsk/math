# isNilpotent_iff_charpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5de72ec83196f3d5a4fe7066e905b7d8580b7859",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41eb7c4471e4a7fe3e860bacfb73fb61ba691bf514fe5969a23e4bdaab1d31ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd0d7013-959d-6b82-ae4a-d1c865e8e8f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6543852-c99e-e713-05ca-37144ba30a24",
  "kind": "lemma",
  "lexical_name": "isNilpotent_iff_charpoly",
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
  "slug": "isnilpotent-iff-charpoly--cdfaa62afe987de9f37a1119",
  "source": {
    "blob": "5de72ec83196f3d5a4fe7066e905b7d8580b7859",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zero/Variant41eb7c4471e4a7fe3e860bacfb73fb61ba691bf514fe5969a23e4bdaab1d31ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdfaa62afe987de9f37a11193d0399bd1df1e2f6798e1d1745a6ac0717cbff69",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zero/Variant41eb7c4471e4a7fe3e860bacfb73fb61ba691bf514fe5969a23e4bdaab1d31ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6543852-c99e-e713-05ca-37144ba30a24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_iff_charpoly (φ : End R M) :
    IsNilpotent φ ↔ charpoly φ = X ^ finrank R M :=
  ⟨IsNilpotent.charpoly_eq_X_pow_finrank,
    fun h ↦ ⟨finrank R M, by rw [← @aeval_X_pow R, ← h, aeval_self_charpoly φ]⟩⟩

open Module.Free in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zero/Variant41eb7c4471e4a7fe3e860bacfb73fb61ba691bf514fe5969a23e4bdaab1d31ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zero/Variant41eb7c4471e4a7fe3e860bacfb73fb61ba691bf514fe5969a23e4bdaab1d31ac.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de72ec83196f3d5a4fe7066e905b7d8580b7859` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
