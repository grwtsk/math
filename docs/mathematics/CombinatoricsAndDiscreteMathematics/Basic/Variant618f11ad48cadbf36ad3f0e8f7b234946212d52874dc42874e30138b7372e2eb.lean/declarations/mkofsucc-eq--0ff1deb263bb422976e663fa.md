# mkOfSucc_δ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b607233fb0ad67c341d8ed799bfe1e25faf6413a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 463,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e8218cd-f823-9a3a-165a-7ae8b5feebcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11df3569-e8ef-742c-b47c-30188713f956",
  "kind": "lemma",
  "lexical_name": "mkOfSucc_δ_eq",
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
  "slug": "mkofsucc-eq--0ff1deb263bb422976e663fa",
  "source": {
    "blob": "b607233fb0ad67c341d8ed799bfe1e25faf6413a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 463,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ff1deb263bb422976e663fa14c90f532c278d5021402941fe2ff1707022a30a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11df3569-e8ef-742c-b47c-30188713f956`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mkOfSucc_δ_eq {n : ℕ} {i : Fin n} {j : Fin (n + 2)}
    (h : j = i.succ.castSucc) :
    mkOfSucc i ≫ δ j = intervalEdge i 2 (by lia) := by
  ext x
  fin_cases x
  · subst h
    simp only [δ, len_mk, Nat.reduceAdd, mkHom, comp_toOrderHom, Hom.toOrderHom_mk,
      Fin.zero_eta, OrderHom.comp_coe, OrderEmbedding.toOrderHom_coe, Function.comp_apply,
      mkOfSucc_homToOrderHom_zero, Fin.succAboveOrderEmb_apply,
      Fin.castSucc_succAbove_castSucc, Fin.succAbove_succ_self]
    rfl
  · simp only [δ, len_mk, Nat.reduceAdd, mkHom, comp_toOrderHom, Hom.toOrderHom_mk, Fin.mk_one,
      OrderHom.comp_coe, OrderEmbedding.toOrderHom_coe, Function.comp_apply,
      mkOfSucc_homToOrderHom_one, Fin.succAboveOrderEmb_apply]
    subst h
    rw [Fin.succAbove_castSucc_self]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant618f11ad48cadbf36ad3f0e8f7b234946212d52874dc42874e30138b7372e2eb.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b607233fb0ad67c341d8ed799bfe1e25faf6413a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
