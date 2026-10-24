# edge_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae8e8744-7dea-03b0-4def-68ebde70c725",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:083dc6dc-4baf-6b82-47fc-47ee63d1fc78",
  "kind": "theorem",
  "lexical_name": "edge_transport",
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
  "slug": "edge-transport--5d38e40a976d7033eb963c06",
  "source": {
    "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26505,
    "line": 26474,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d38e40a976d7033eb963c06bed905c5022ce1aa1c57a57f3454add02e7ab8d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:083dc6dc-4baf-6b82-47fc-47ee63d1fc78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26474–26505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edge_transport (t : Bool) {y z y' z' : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (hy' : HasType P Γ y' B.yType) (my' : WellModed γ y' .data)
    (hz' : HasType P Γ z' B.yType) (mz' : WellModed γ z' .data)
    (ey : Proves P Γ γ (B.relation L.code KY.code KP.code y' y))
    (ez : Proves P Γ γ (B.relation L.code KY.code KP.code z' z))
    (he : Proves P Γ γ (B.edge L.code KY.code KP.code t y z)) :
    Proves P Γ γ (B.edge L.code KY.code KP.code t y' z') := by
  apply H.edge_witness_elim KY KP t hy my hz mz (H.edge_formula KY KP t hy' my' hz' mz') he
  intro Δ δ e x hx mx hp
  rw [edge_rename]
  have h0 := (H.rename e).observation.tagged_typed 0 hx mx
  have ht := (H.rename e).observation.tagged_typed (if t then 2 else 1) hx mx
  have f0 := (H.rename e).relation_formula (KY.rename e) (KP.rename e)
    (y_typed_rename (B := B) e hy) (e.moded my) h0.1 h0.2
  have ft := (H.rename e).relation_formula (KY.rename e) (KP.rename e)
    (y_typed_rename (B := B) e hz) (e.moded mz) ht.1 ht.2
  have eyx := (L.rename e).conj_left f0 ft hp
  have ezx := (L.rename e).conj_right f0 ft hp
  have eyE := ey.rename e
  have ezE := ez.rename e
  simp only [relation_rename] at eyE ezE
  exact (H.rename e).edge_witness_intro (KY.rename e) (KP.rename e) t
    (y_typed_rename (B := B) e hy') (e.moded my') (y_typed_rename (B := B) e hz') (e.moded mz') hx mx
    ((H.rename e).relation_trans (KY.rename e) (KP.rename e)
      (y_typed_rename (B := B) e hy') (e.moded my') (y_typed_rename (B := B) e hy) (e.moded my)
      h0.1 h0.2 eyE eyx)
    ((H.rename e).relation_trans (KY.rename e) (KP.rename e)
      (y_typed_rename (B := B) e hz') (e.moded mz') (y_typed_rename (B := B) e hz) (e.moded mz)
      ht.1 ht.2 ezE ezx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean#L26474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
