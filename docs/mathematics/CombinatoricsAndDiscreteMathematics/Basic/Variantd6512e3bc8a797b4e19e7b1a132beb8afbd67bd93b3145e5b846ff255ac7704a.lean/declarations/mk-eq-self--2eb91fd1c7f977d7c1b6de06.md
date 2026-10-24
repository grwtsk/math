# mk_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "700d350edd1fa91d57be345c2b7fbd1a5bca0af1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09e615d2-c412-e564-661f-dac8f8ec0e61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16a1dae4-7c7a-7737-e243-59f4e762068f",
  "kind": "lemma",
  "lexical_name": "mk_eq_self",
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
  "slug": "mk-eq-self--2eb91fd1c7f977d7c1b6de06",
  "source": {
    "blob": "700d350edd1fa91d57be345c2b7fbd1a5bca0af1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 305,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb91fd1c7f977d7c1b6de06eb0225bdb12f67dc0c90f8c047f9eef32cd31bf3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a1dae4-7c7a-7737-e243-59f4e762068f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_eq_self (G : Graph α β) {E : Set β} (hE : ∀ e, e ∈ E ↔ ∃ x y, G.IsLink e x y) :
    Graph.mk V(G) G.IsLink E
    (by simpa [show E = E(G) by simp [Set.ext_iff, hE, G.edge_mem_iff_exists_isLink]]
      using G.isLink_symm)
    (fun _ _ _ _ _ h h' ↦ h.left_eq_or_eq h') hE
    (fun _ _ _ ↦ IsLink.left_mem) = G := by
  obtain rfl : E = E(G) := by simp [Set.ext_iff, hE, G.edge_mem_iff_exists_isLink]
  cases G with | _ _ _ _ _ _ h _ => simp [← h]

/-- Two graphs with the same vertex set and binary incidences are equal.
(We use this as the default extensionality lemma rather than adding `@[ext]`
to the definition of `Graph`, so it doesn't require equality of the edge sets.) -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `700d350edd1fa91d57be345c2b7fbd1a5bca0af1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
