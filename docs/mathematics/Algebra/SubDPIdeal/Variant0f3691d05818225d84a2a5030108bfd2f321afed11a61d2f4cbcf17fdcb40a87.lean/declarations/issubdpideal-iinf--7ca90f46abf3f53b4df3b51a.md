# isSubDPIdeal_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7854e39795ffabb5082ab39d799549ae6c79ddb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:225ead3a-b842-31b1-ca99-d42074960784",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b68638c-251b-f3dd-2335-26d299e5ec56",
  "kind": "theorem",
  "lexical_name": "isSubDPIdeal_iInf",
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
  "slug": "issubdpideal-iinf--7ca90f46abf3f53b4df3b51a",
  "source": {
    "blob": "7854e39795ffabb5082ab39d799549ae6c79ddb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 191,
    "path": "GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ca90f46abf3f53b4df3b51a4544b456c4110674142df291b8caa948f37ed838",
  "verification": {
    "reference": "docs/verification/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b68638c-251b-f3dd-2335-26d299e5ec56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSubDPIdeal_iInf {ι : Type*} {J : ι → Ideal A} (hJ : ∀ i, IsSubDPIdeal hI (J i)) :
    IsSubDPIdeal hI (I ⊓ iInf (fun i ↦ J i)) := by
  cases isEmpty_or_nonempty ι with
  | inr _ =>
    refine ⟨fun _ hx ↦ hx.1, ?_⟩
    intro n hn x hx
    simp only [Ideal.mem_inf, mem_iInf] at hx ⊢
    exact ⟨hI.dpow_mem hn hx.1, fun i ↦  IsSubDPIdeal.dpow_mem (hJ i) n hn (hx.2 i)⟩
  | inl _ =>
    simp only [iInf_of_empty, le_top, inf_of_le_left]
    exact IsSubDPIdeal.self hI

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7854e39795ffabb5082ab39d799549ae6c79ddb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
