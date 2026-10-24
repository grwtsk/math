# refines_join_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aff7a958f528e6844fb32640120adac61f596b4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d660e0d2-8097-996e-c2da-0a797a1df6f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c8e2779-45a6-5e1d-70be-50c6d64f69bf",
  "kind": "theorem",
  "lexical_name": "refines_join_iff",
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
  "slug": "refines-join-iff--534b6a33cd27e53ccacba945",
  "source": {
    "blob": "aff7a958f528e6844fb32640120adac61f596b4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:534b6a33cd27e53ccacba945aa7265f03fa88e89dacdbbc432250aef952a92fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c8e2779-45a6-5e1d-70be-50c6d64f69bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refines_join_iff [DecidableEq Test] (finer first second : FiniteNotion Object Test Value)
    (commonPolicy : first.policy = second.policy) (identity : String) (budget : ℕ) :
    finer.RefinesAt (first.join second commonPolicy identity) budget ↔
      finer.RefinesAt first budget ∧ finer.RefinesAt second budget := by
  constructor
  · intro refines
    exact ⟨refines_trans refines (join_refines_first first second commonPolicy identity budget),
      refines_trans refines (join_refines_second first second commonPolicy identity budget)⟩
  · rintro ⟨firstRefines, secondRefines⟩ x y equivalent
    exact (equivalent_join_iff first second commonPolicy identity budget x y).mpr
      ⟨firstRefines x y equivalent, secondRefines x y equivalent⟩

/-- A pair indistinguishable in both components stays indistinguishable in the exact union. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aff7a958f528e6844fb32640120adac61f596b4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
