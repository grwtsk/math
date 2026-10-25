# image_inter_dom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "317c2509aaf237f2ebbc8144a826dcbb4efd7916",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e615833feef2f0ae59f4f563b931cbee40f8902d98e1fbd6660c483440dc8154.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c4402d5-74cb-5517-9b34-a8898f11dc05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a20cc911-6836-099e-2473-25dda01f208c",
  "kind": "theorem",
  "lexical_name": "image_inter_dom_eq",
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
  "slug": "image-inter-dom-eq--15294d0b3d64ffa78b8a1a52",
  "source": {
    "blob": "317c2509aaf237f2ebbc8144a826dcbb4efd7916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rel/Variante615833feef2f0ae59f4f563b931cbee40f8902d98e1fbd6660c483440dc8154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15294d0b3d64ffa78b8a1a5232c6e8b6874c21f6841bb8c20a76e18adf9143eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rel/Variante615833feef2f0ae59f4f563b931cbee40f8902d98e1fbd6660c483440dc8154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a20cc911-6836-099e-2473-25dda01f208c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_inter_dom_eq (s : Set α) : r.image (s ∩ r.dom) = r.image s := by
  apply Set.eq_of_subset_of_subset
  · apply r.image_mono (by simp)
  · intro x h
    rw [mem_image] at *
    rcases h with ⟨y, hy, ryx⟩
    use y
    suffices h : y ∈ r.dom by simp_all only [Set.mem_inter_iff, and_self]
    rw [dom, Set.mem_setOf_eq]
    use x

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Rel/Variante615833feef2f0ae59f4f563b931cbee40f8902d98e1fbd6660c483440dc8154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rel/Variante615833feef2f0ae59f4f563b931cbee40f8902d98e1fbd6660c483440dc8154.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `317c2509aaf237f2ebbc8144a826dcbb4efd7916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
