# splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "253d03173a92cdb54f5f2577ee549c714ad4a1d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15ac1153-651b-7fd5-e276-843bd2bba7b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f9d97aa-47ad-37e7-8de3-14776da7a28d",
  "kind": "theorem",
  "lexical_name": "splits",
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
  "slug": "splits--f433dce3243a52b4c28ec37c",
  "source": {
    "blob": "253d03173a92cdb54f5f2577ee549c714ad4a1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 166,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f433dce3243a52b4c28ec37cfc3a30e00fd0a19928dfcd8d939a9ba986bda774",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f9d97aa-47ad-37e7-8de3-14776da7a28d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem splits (n : ℕ) :
    ∀ {K : Type u} [Field K], ∀ (f : K[X]) (_hfn : f.natDegree = n),
      Splits (f.map (algebraMap K <| SplittingFieldAux n f)) :=
  Nat.recOn (motive := fun n => ∀ {K : Type u} [Field K], ∀ (f : K[X]) (_hfn : f.natDegree = n),
      Splits (f.map (algebraMap K <| SplittingFieldAux n f))) n
    (fun {_} _ _ hf =>
      Splits.of_degree_le_one <| degree_map_le.trans
        (le_trans degree_le_natDegree <| hf.symm ▸ WithBot.coe_le_coe.2 zero_le_one))
    fun n ih {K} _ f hf => by
    rw [algebraMap_succ, ← map_map,
      ← X_sub_C_mul_removeFactor f fun h => by rw [h] at hf; cases hf]
    rw [Polynomial.map_mul]
    exact Splits.mul ((Splits.X_sub_C _).map _) (ih _ (natDegree_removeFactor' hf))

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant4dfab31fd94128cbc7f9c3efec8c7e3100ce15a27eac80f135cd05d4f9f36821.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `253d03173a92cdb54f5f2577ee549c714ad4a1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
