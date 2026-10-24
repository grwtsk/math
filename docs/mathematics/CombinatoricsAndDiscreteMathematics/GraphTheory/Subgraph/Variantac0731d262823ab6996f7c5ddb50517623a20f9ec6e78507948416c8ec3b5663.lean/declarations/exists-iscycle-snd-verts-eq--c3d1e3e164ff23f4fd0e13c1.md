# exists_isCycle_snd_verts_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19ffc80dc494ae5c89f9ef5cf63cbdc2693c442b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:399d31d2-d4d7-c724-c765-34d2f87364cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:536edc25-b643-46d0-ce45-ba58cc6f187a",
  "kind": "lemma",
  "lexical_name": "exists_isCycle_snd_verts_eq",
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
  "slug": "exists-iscycle-snd-verts-eq--c3d1e3e164ff23f4fd0e13c1",
  "source": {
    "blob": "19ffc80dc494ae5c89f9ef5cf63cbdc2693c442b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 386,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3d1e3e164ff23f4fd0e13c129535866524c250fc6bdfe9a3304f21386156a2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:536edc25-b643-46d0-ce45-ba58cc6f187a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isCycle_snd_verts_eq {p : G.Walk v v} (h : p.IsCycle) (hadj : p.toSubgraph.Adj v w) :
    ∃ (p' : G.Walk v v), p'.IsCycle ∧ p'.snd = w ∧ p'.toSubgraph.verts = p.toSubgraph.verts := by
  have : w ∈ p.toSubgraph.neighborSet v := hadj
  rw [h.neighborSet_toSubgraph_endpoint] at this
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at this
  obtain hl | hr := this
  · exact ⟨p, ⟨h, hl.symm, rfl⟩⟩
  · use p.reverse
    rw [penultimate, ← getVert_reverse] at hr
    exact ⟨h.reverse, hr.symm, by rw [toSubgraph_reverse _]⟩

end IsCycle

open Finset

variable [DecidableEq V] {u v : V} {p : G.Walk u v}

/-- This lemma states that given some finite set of vertices, of which at least one is in the
support of a given walk, one of them is the first to be encountered. This consequence is encoded
as the set of vertices, restricted to those in the support, except for the first, being empty.
You could interpret this as being `takeUntilSet`, but defining this is slightly involved due to
not knowing what the final vertex is. This could be done by defining a function to obtain the
first encountered vertex and then use that to define `takeUntilSet`. That direction could be
worthwhile if this concept is used more widely. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19ffc80dc494ae5c89f9ef5cf63cbdc2693c442b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
