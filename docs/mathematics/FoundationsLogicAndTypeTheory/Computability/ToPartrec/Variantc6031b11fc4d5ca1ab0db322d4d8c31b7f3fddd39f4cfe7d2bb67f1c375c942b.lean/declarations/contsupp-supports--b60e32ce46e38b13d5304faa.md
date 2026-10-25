# contSupp_supports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11648bb1fd69b7d0f80769fec28bf90ab05672f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71498cb6-02f7-be96-6270-1723ee61f653",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f701ab41-2f08-39a1-c7d5-20e80adfb66d",
  "kind": "theorem",
  "lexical_name": "contSupp_supports",
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
  "slug": "contsupp-supports--b60e32ce46e38b13d5304faa",
  "source": {
    "blob": "11648bb1fd69b7d0f80769fec28bf90ab05672f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1266,
    "line": 1248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b60e32ce46e38b13d5304faaeba2d5274d30b20534c913b5fcce2c660b37aca9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f701ab41-2f08-39a1-c7d5-20e80adfb66d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1248–1266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contSupp_supports {S k} (H : contSupp k ⊆ S) : Supports (contSupp k) S := by
  induction k with
  | halt => simp [contSupp_halt, Supports]
  | cons₁ f k IH =>
    have H₁ := H; rw [contSupp_cons₁] at H₁; have H₂ := Finset.union_subset_right H₁
    refine trStmts₁_supports' (trNormal_supports H₂) H₁ fun h => ?_
    refine supports_union.2 ⟨codeSupp'_supports H₂, ?_⟩
    simp only [codeSupp, contSupp_cons₂, Finset.union_subset_iff] at H₂
    exact trStmts₁_supports' (head_supports H₂.2.2) (Finset.union_subset_right h) IH
  | cons₂ k IH =>
    have H' := H; rw [contSupp_cons₂] at H'
    exact trStmts₁_supports' (head_supports <| Finset.union_subset_right H') H' IH
  | comp f k IH =>
    have H' := H; rw [contSupp_comp] at H'; have H₂ := Finset.union_subset_right H'
    exact supports_union.2 ⟨codeSupp'_supports H', IH H₂⟩
  | fix f k IH =>
    rw [contSupp] at H
    exact supports_union.2 ⟨codeSupp'_supports H, IH (Finset.union_subset_right H)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean#L1248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11648bb1fd69b7d0f80769fec28bf90ab05672f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
