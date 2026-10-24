# annihilator_map_mkQ_eq_colon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f52f5830bcea86296bc04a0f23a4b115fdf4b554",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5479bcc2-586d-84be-46a9-b807852b4de5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27a3c0d5-9463-2eef-02e7-347915b25de0",
  "kind": "lemma",
  "lexical_name": "annihilator_map_mkQ_eq_colon",
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
  "slug": "annihilator-map-mkq-eq-colon--9559c04cb82029df5eef0630",
  "source": {
    "blob": "f52f5830bcea86296bc04a0f23a4b115fdf4b554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 160,
    "path": "GRWTSK/Algebra/Colon/Variantb5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9559c04cb82029df5eef0630d7e7607d22b9eb06b8e34ecee907e7fe6f18c66f",
  "verification": {
    "reference": "docs/verification/Algebra/Colon/Variantb5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27a3c0d5-9463-2eef-02e7-347915b25de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma annihilator_map_mkQ_eq_colon : annihilator (P.map N.mkQ) = N.colon (P : Set M) := by
  ext
  rw [mem_annihilator, mem_colon]
  exact ⟨fun H p hp ↦ (Quotient.mk_eq_zero N).1 (H (Quotient.mk p) (mem_map_of_mem hp)),
    fun H _ ⟨p, hp, hpm⟩ ↦ hpm ▸ ((Quotient.mk_eq_zero N).2 <| H p hp)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Colon/Variantb5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Colon/Variantb5c3fac697f9684c64eafbfa0753899918ca11a369085e1d51e6a23b5ff0dcb8.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52f5830bcea86296bc04a0f23a4b115fdf4b554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
