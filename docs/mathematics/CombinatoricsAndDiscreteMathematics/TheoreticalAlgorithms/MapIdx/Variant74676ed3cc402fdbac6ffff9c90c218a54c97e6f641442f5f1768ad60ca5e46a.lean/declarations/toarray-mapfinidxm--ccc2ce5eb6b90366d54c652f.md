# toArray_mapFinIdxM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af3ce9f5791845e45e8936d0255ed0d18b559fea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e297a68c-e96b-adfa-374f-30edf69fe3ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a22a122-a978-7583-a54c-8797c7872012",
  "kind": "theorem",
  "lexical_name": "toArray_mapFinIdxM",
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
  "slug": "toarray-mapfinidxm--ccc2ce5eb6b90366d54c652f",
  "source": {
    "blob": "af3ce9f5791845e45e8936d0255ed0d18b559fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccc2ce5eb6b90366d54c652f269967819c6b0c685750cb9a53d209d1049c7616",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a22a122-a978-7583-a54c-8797c7872012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toArray_mapFinIdxM [Monad m] [LawfulMonad m] {xs : Vector α n}
    {f : (i : Nat) → α → (h : i < n) → m β} :
    toArray <$> xs.mapFinIdxM f = xs.toArray.mapFinIdxM
      (fun i x h => f i x (size_toArray xs ▸ h)) := by
  let rec go (i j : Nat) (inv : i + j = n) (bs : Vector β (n - i)) :
      toArray <$> mapFinIdxM.map xs f i j inv bs
      = Array.mapFinIdxM.map xs.toArray (fun i x h => f i x (size_toArray xs ▸ h))
        i j (size_toArray _ ▸ inv) bs.toArray := by
    match i with
    | 0 => simp [mapFinIdxM.map, map_pure, Array.mapFinIdxM.map, Nat.sub_zero]
    | k + 1 =>
      simp only [mapFinIdxM.map, map_bind, Array.mapFinIdxM.map, getElem_toArray]
      conv => lhs; arg 2; intro; rw [go]
      rfl
  simp only [mapFinIdxM, Array.mapFinIdxM, size_toArray]
  exact go _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3ce9f5791845e45e8936d0255ed0d18b559fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
