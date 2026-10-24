# adj_of_mem_walk_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7162a73fd67332fcb414fd5f87f1e75d8aa0bfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 955,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55706c4e-0467-0641-f627-e44003397280",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:956a8596-3ec7-0500-88e8-22bd8a5daa55",
  "kind": "lemma",
  "lexical_name": "adj_of_mem_walk_support",
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
  "slug": "adj-of-mem-walk-support--dcbfb7f462287625de0b3bed",
  "source": {
    "blob": "b7162a73fd67332fcb414fd5f87f1e75d8aa0bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 977,
    "line": 955,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcbfb7f462287625de0b3bed07533e2aaebdbac1c080b1813fd77577c7ddaef1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:956a8596-3ec7-0500-88e8-22bd8a5daa55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 955–977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adj_of_mem_walk_support {G : SimpleGraph V} {u v : V} (p : G.Walk u v) (hp : ¬p.Nil) {x : V}
    (hx : x ∈ p.support) : ∃y ∈ p.support, G.Adj x y := by
  induction p with
  | nil =>
    exact (hp Walk.Nil.nil).elim
  | @cons u v w h p ih =>
    cases List.mem_cons.mp hx with
    | inl hxu =>
      rw [hxu]
      exact ⟨v, ⟨((Walk.cons h p).mem_support_iff).mpr (Or.inr p.start_mem_support), h⟩⟩
    | inr hxp =>
      cases Decidable.em p.Nil with
      | inl hnil =>
        rw [Walk.nil_iff_support_eq.mp hnil] at hxp
        rw [show (x = v) by simp_all]
        exact ⟨u, ⟨(Walk.cons h p).start_mem_support, G.adj_symm h⟩⟩
      | inr hnotnil =>
        obtain ⟨y, hy⟩ := ih hnotnil hxp
        refine ⟨y, ⟨?_, hy.right⟩⟩
        rw [Walk.mem_support_iff]
        simp only [Walk.support_cons, List.tail_cons]
        exact Or.inr hy.left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean#L955).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7162a73fd67332fcb414fd5f87f1e75d8aa0bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
