# finsuppProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8884146e75fabbd228710901fb1327a580d2027",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04ccde16-7d43-db4e-16ca-1fd015525160",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e213bf2-829a-f1ff-e87d-14e9b82cf68e",
  "kind": "theorem",
  "lexical_name": "finsuppProd",
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
  "slug": "finsuppprod--22aca485c1a10fcc07d70f7a",
  "source": {
    "blob": "f8884146e75fabbd228710901fb1327a580d2027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22aca485c1a10fcc07d70f7a51872f67c875e9c25cf51f0356061986ac69206e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e213bf2-829a-f1ff-e87d-14e9b82cf68e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem finsuppProd {ι : Type*} {β : Type*} {M : Type*}
    [CommMonoid M] [Zero β]
    (c : Con M) (h : ι → β → M) (h' : ι → β → M)
    {f g : ι →₀ β} (hf : ∀ i, c (h i 0) 1) (hf' : ∀ i, c (h' i 0) 1)
    (H : ∀ i, c (h i (f i)) (h' i (g i))) :
    c (f.prod h) (g.prod h') := by
  refine Quotient.exact (show c.mk' _ = c.mk' _ from ?_)
  rw [map_finsuppProd, map_finsuppProd]
  classical
  exact Finsupp.prod_congr_of_eq_on_union
    (fun _ _ => Quotient.sound <| H _)
    (fun _ _ => Quotient.sound <| hf _) (fun _ _ => Quotient.sound <| hf' _)

@[to_additive (attr := simp, norm_cast)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantca15f98902efbd312f9070ee6a13bca76ee35106adf531bede77894083ee0e8c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8884146e75fabbd228710901fb1327a580d2027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
