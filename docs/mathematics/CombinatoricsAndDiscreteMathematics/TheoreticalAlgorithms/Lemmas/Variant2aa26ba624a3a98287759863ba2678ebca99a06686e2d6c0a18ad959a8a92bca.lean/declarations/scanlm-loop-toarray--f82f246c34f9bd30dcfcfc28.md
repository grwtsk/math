# scanlM.loop_toArray

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
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:233a4a5c-77fa-c813-34f1-2c56fba39d2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:451e5ea9-679b-c0ee-ce61-6a1c766ea9d8",
  "kind": "theorem",
  "lexical_name": "scanlM.loop_toArray",
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
  "slug": "scanlm-loop-toarray--f82f246c34f9bd30dcfcfc28",
  "source": {
    "blob": "1fcaa6d7dad22e77db699b3571fdbf27ca2ca34e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f82f246c34f9bd30dcfcfc284b98498eddd73eb7bc0e31652b63e4693dbe31da",
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

Occurrence: `result:451e5ea9-679b-c0ee-ce61-6a1c766ea9d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scanlM.loop_toArray [Monad m] [LawfulMonad m] (f : β → α → m β) (as : Vector α n)
    (h_stop : n ≤ as.toArray.size) (i : Nat) (hi : i ≤ n) (cur : β)
    (acc_v : Vector β i) (acc_a : Array β) (h_acc : acc_v.toArray = acc_a) :
    Vector.toArray <$> Vector.scanlM.loop f as cur i hi acc_v =
    Array.scanlM.loop f cur as.toArray i n h_stop acc_a := by
  induction h_term : n - i generalizing i cur acc_v acc_a with
  | zero =>
    unfold Vector.scanlM.loop Array.scanlM.loop
    simp [h_acc, show i = n by omega]
  | succ k ih =>
    unfold Vector.scanlM.loop Array.scanlM.loop
    simp only [show i < n by omega, dite_true, map_bind]
    apply bind_congr
    intro next
    apply ih
    . simp [Vector.toArray_push, h_acc]
    . omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fcaa6d7dad22e77db699b3571fdbf27ca2ca34e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
