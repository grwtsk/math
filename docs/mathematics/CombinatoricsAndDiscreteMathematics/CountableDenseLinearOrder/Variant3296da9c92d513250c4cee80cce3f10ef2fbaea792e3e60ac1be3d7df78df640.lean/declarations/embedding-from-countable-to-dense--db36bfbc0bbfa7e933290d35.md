# embedding_from_countable_to_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc05a967-231d-2149-3179-370ffa934bf3",
  "kind": "theorem",
  "lexical_name": "embedding_from_countable_to_dense",
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
  "slug": "embedding-from-countable-to-dense--db36bfbc0bbfa7e933290d35",
  "source": {
    "blob": "cb52d90e84f78bad37640d2e1d15616a5d3c6030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 233,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db36bfbc0bbfa7e933290d3515d3564dd8c989d0650de6a55f008789c9a3d546",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc05a967-231d-2149-3179-370ffa934bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embedding_from_countable_to_dense [Countable α] [DenselyOrdered β] [Nontrivial β] :
    Nonempty (α ↪o β) := by
  cases nonempty_encodable α
  rcases exists_pair_lt β with ⟨x, y, hxy⟩
  obtain ⟨a, ha⟩ := exists_between hxy
  haveI : Nonempty (Set.Ioo x y) := ⟨⟨a, ha⟩⟩
  let our_ideal : Ideal (PartialIso α _) :=
    idealOfCofinals default (definedAtLeft (Set.Ioo x y))
  let F a := funOfIdeal a our_ideal (cofinal_meets_idealOfCofinals _ _ a)
  refine
    ⟨RelEmbedding.trans (OrderEmbedding.ofStrictMono (fun a ↦ (F a).val) fun a₁ a₂ ↦ ?_)
        (OrderEmbedding.subtype _)⟩
  rcases (F a₁).prop with ⟨f, hf, ha₁⟩
  rcases (F a₂).prop with ⟨g, hg, ha₂⟩
  rcases our_ideal.directed _ hf _ hg with ⟨m, _hm, fm, gm⟩
  exact (lt_iff_lt_of_cmp_eq_cmp <| m.prop (a₁, _) (fm ha₁) (a₂, _) (gm ha₂)).mp

/-- Any two countable dense, nonempty linear orders without endpoints are order isomorphic. This is
also known as **Cantor's isomorphism theorem**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb52d90e84f78bad37640d2e1d15616a5d3c6030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
