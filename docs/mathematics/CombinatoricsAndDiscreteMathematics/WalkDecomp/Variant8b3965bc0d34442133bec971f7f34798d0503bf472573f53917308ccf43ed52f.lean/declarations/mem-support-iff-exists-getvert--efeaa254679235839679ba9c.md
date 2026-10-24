# mem_support_iff_exists_getVert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fbb005201509073aea8c64afb55ad984e028c18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d12b7e02-cfa4-5af0-693d-fd815cba0e6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f912baa2-b094-ffb0-fec5-c18299b433d7",
  "kind": "theorem",
  "lexical_name": "mem_support_iff_exists_getVert",
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
  "slug": "mem-support-iff-exists-getvert--efeaa254679235839679ba9c",
  "source": {
    "blob": "8fbb005201509073aea8c64afb55ad984e028c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 290,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efeaa254679235839679ba9c16cd346c8251eec952d73b3aae2ee1d3219733f7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f912baa2-b094-ffb0-fec5-c18299b433d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_support_iff_exists_getVert {u v w : V} {p : G.Walk v w} :
    u ∈ p.support ↔ ∃ n, p.getVert n = u ∧ n ≤ p.length := by
  classical
  constructor
  · intro h
    obtain ⟨q, r, hqr⟩ := SimpleGraph.Walk.mem_support_iff_exists_append.mp h
    use q.length
    rw [hqr, Walk.getVert_append]
    simp only [lt_self_iff_false, ↓reduceIte, Nat.sub_self, getVert_zero, length_append,
      Nat.le_add_right, and_self]
  · rintro ⟨n, hn⟩
    rw [mem_support_iff]
    cases n with
    | zero => aesop
    | succ n =>
      right
      have hnp : ¬ p.Nil := by
        rw [nil_iff_length_eq]
        omega
      rw [← support_tail_of_not_nil _ hnp, mem_support_iff_exists_getVert]
      use n
      rwa [getVert_tail, ← Nat.add_one_le_add_one_iff, length_tail_add_one hnp]
termination_by p.length
decreasing_by
· simp_wf
  rw [Nat.lt_iff_add_one_le, length_tail_add_one hnp]

end SimpleGraph.Walk
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fbb005201509073aea8c64afb55ad984e028c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
