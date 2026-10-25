# toList_foldr_inf_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79d58d84141ef94aad7e3f2de85a421842ba0f24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7934e36-b5b0-7760-ff33-e795552b80f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae3806da-9d2c-f2b5-3d12-84a9ed0d47fb",
  "kind": "theorem",
  "lexical_name": "toList_foldr_inf_mem",
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
  "slug": "tolist-foldr-inf-mem--fb81d368d1cbdf138f1f1945",
  "source": {
    "blob": "79d58d84141ef94aad7e3f2de85a421842ba0f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb81d368d1cbdf138f1f194527e51b8a267e4ee72a50a4abc68a416c45a95019",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae3806da-9d2c-f2b5-3d12-84a9ed0d47fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_foldr_inf_mem {p : T.CompleteType α} {t : Finset L[[α]].Sentence} :
    t.toList.foldr (· ⊓ ·) ⊤ ∈ p ↔ (t : L[[α]].Theory) ⊆ ↑p := by
  simp_rw [subset_def, ← SetLike.mem_coe, p.isMaximal.mem_iff_models, models_sentence_iff,
    Sentence.Realize, Formula.Realize, BoundedFormula.realize_foldr_inf, Finset.mem_toList]
  exact ⟨fun h φ hφ M => h _ _ hφ, fun h M φ hφ => h _ hφ _⟩

end CompleteType

variable {M : Type w'} [L.Structure M] [Nonempty M] [M ⊨ T] (T)

/-- The set of all formulas true at a tuple in a structure forms a complete type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d58d84141ef94aad7e3f2de85a421842ba0f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
