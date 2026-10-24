# restrictSurjective_of_add_le_ENatCard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1ff216af673891dcd1410532a35dff5fd90033d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:029632ca-d403-2beb-cab1-8f8b33260e17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79019f86-149c-bb2c-a83e-7f212bd7423b",
  "kind": "theorem",
  "lexical_name": "restrictSurjective_of_add_le_ENatCard",
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
  "slug": "restrictsurjective-of-add-le-enatcard--187a9e4953494420a52bd825",
  "source": {
    "blob": "a1ff216af673891dcd1410532a35dff5fd90033d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:187a9e4953494420a52bd825787cf3bb08bd1e428c91f1cb77498d077db4c84c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79019f86-149c-bb2c-a83e-7f212bd7423b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictSurjective_of_add_le_ENatCard (hn : m + n ≤ ENat.card α) :
    Surjective (fun (x : Fin (m + n) ↪ α) ↦ (Fin.castAddEmb n).trans x) := by
  intro x
  obtain ⟨y, hxy⟩ :=
    exists_embedding_disjoint_range_of_add_le_ENat_card (s := range x)
      (by simpa [← Nat.card_coe_set_eq, Nat.card_range_of_injective x.injective])
  use append hxy
  ext i
  simp [trans_apply, coe_castAddEmb, append]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Embedding/Variant51f9c4b6c637eb765d9bd5bfebf0c0b5f55cd44cf74aaa26daa9bd67da93a5fa.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1ff216af673891dcd1410532a35dff5fd90033d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
