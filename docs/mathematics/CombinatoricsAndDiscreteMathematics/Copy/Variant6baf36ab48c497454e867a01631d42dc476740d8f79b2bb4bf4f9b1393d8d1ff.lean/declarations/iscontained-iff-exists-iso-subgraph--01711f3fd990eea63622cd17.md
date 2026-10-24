# isContained_iff_exists_iso_subgraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd97628b246046c05d7d746b1448f3f2d5010d6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6baf36ab48c497454e867a01631d42dc476740d8f79b2bb4bf4f9b1393d8d1ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:218fadb8-5ab0-6cd8-5217-2531f5225060",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5b7b4a9-0697-9bc2-8e17-eca4b86b5696",
  "kind": "theorem",
  "lexical_name": "isContained_iff_exists_iso_subgraph",
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
  "slug": "iscontained-iff-exists-iso-subgraph--01711f3fd990eea63622cd17",
  "source": {
    "blob": "dd97628b246046c05d7d746b1448f3f2d5010d6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 290,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant6baf36ab48c497454e867a01631d42dc476740d8f79b2bb4bf4f9b1393d8d1ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01711f3fd990eea63622cd1796fd3267f35815b47bcea5f1953b265fd0e33ec8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Copy/Variant6baf36ab48c497454e867a01631d42dc476740d8f79b2bb4bf4f9b1393d8d1ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b7b4a9-0697-9bc2-8e17-eca4b86b5696`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isContained_iff_exists_iso_subgraph :
    A ⊑ B ↔ ∃ B' : B.Subgraph, Nonempty (A ≃g B'.coe) where
  mp := fun ⟨f⟩ ↦ ⟨.map f.toHom ⊤, ⟨f.isoToSubgraph⟩⟩
  mpr := fun ⟨B', ⟨e⟩⟩ ↦ B'.coe_isContained.trans' ⟨e.toCopy⟩

alias ⟨IsContained.exists_iso_subgraph, IsContained.of_exists_iso_subgraph⟩ :=
  isContained_iff_exists_iso_subgraph

end IsContained

section Free

/-- `A.Free B` means that `B` does not contain a copy of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Copy/Variant6baf36ab48c497454e867a01631d42dc476740d8f79b2bb4bf4f9b1393d8d1ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant6baf36ab48c497454e867a01631d42dc476740d8f79b2bb4bf4f9b1393d8d1ff.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd97628b246046c05d7d746b1448f3f2d5010d6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
