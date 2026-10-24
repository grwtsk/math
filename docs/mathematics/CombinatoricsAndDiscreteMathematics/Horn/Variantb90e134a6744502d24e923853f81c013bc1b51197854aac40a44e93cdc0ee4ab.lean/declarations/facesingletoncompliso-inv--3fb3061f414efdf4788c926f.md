# faceSingletonComplIso_inv_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "624590ab5dd582466a25ebaf4afa54485ea83c6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbce96ec-d40f-cbb1-81bd-dc6ceb7ea835",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c02eb5ac-b11d-9c4e-aae1-e5bf6f6594a1",
  "kind": "lemma",
  "lexical_name": "faceSingletonComplIso_inv_ι",
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
  "slug": "facesingletoncompliso-inv--3fb3061f414efdf4788c926f",
  "source": {
    "blob": "624590ab5dd582466a25ebaf4afa54485ea83c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variantb90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fb3061f414efdf4788c926fe662515a0bc998dd711bc2606b9ace18c3405205",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Horn/Variantb90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c02eb5ac-b11d-9c4e-aae1-e5bf6f6594a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma faceSingletonComplIso_inv_ι {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 2)) (hij : j ≠ i) :
    (stdSimplex.faceSingletonComplIso.{u} j).inv ≫ ι i j hij = faceι i j hij := by
  rw [← cancel_epi (stdSimplex.faceSingletonComplIso.{u} j).hom, Iso.hom_inv_id_assoc]
  rfl

end horn

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Horn/Variantb90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variantb90e134a6744502d24e923853f81c013bc1b51197854aac40a44e93cdc0ee4ab.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624590ab5dd582466a25ebaf4afa54485ea83c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
