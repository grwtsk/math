# scanrM.loop_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fcaa6d7dad22e77db699b3571fdbf27ca2ca34e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4879f129-2705-ecbe-7c44-058a86b131a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf8aeded-a678-e96f-d140-8dcee0c70083",
  "kind": "theorem",
  "lexical_name": "scanrM.loop_toArray",
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
  "slug": "scanrm-loop-toarray--171bfd81c2a590c2c81ec443",
  "source": {
    "blob": "1fcaa6d7dad22e77db699b3571fdbf27ca2ca34e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 155,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:171bfd81c2a590c2c81ec443319e0b1c8ff9997826bdbd9e404f946a5dc769ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf8aeded-a678-e96f-d140-8dcee0c70083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scanrM.loop_toArray [Monad m] [LawfulMonad m] {f : α → β → m β}
    {as : Vector α n} {i : Nat} {hi : i ≤ n} {acc_v : Vector β (n - i)}
    {acc_a : Array β} {h_acc : acc_v.toArray = acc_a} :
    Vector.toArray <$> Vector.scanrM.loop f as cur i hi acc_v =
    Array.scanrM.loop f cur as.toArray i 0 (by simp; omega) acc_a := by
  induction i generalizing cur acc_a with
  | zero =>
    unfold Vector.scanrM.loop Array.scanrM.loop
    simp [h_acc]
  | succ k ih =>
    unfold Vector.scanrM.loop Array.scanrM.loop
    simp only [Nat.zero_lt_succ k, dite_true, map_bind]
    apply bind_congr
    intro next
    apply ih
    simp [Vector.toArray_push, Vector.toArray_cast, h_acc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fcaa6d7dad22e77db699b3571fdbf27ca2ca34e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
