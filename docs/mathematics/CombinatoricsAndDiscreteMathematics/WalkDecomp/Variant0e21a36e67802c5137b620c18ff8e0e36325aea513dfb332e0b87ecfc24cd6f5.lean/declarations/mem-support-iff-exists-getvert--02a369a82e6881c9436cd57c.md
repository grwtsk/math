# mem_support_iff_exists_getVert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce3dac8b-c48a-d7e1-9ea4-fb1b8a00e33c",
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
  "slug": "mem-support-iff-exists-getvert--02a369a82e6881c9436cd57c",
  "source": {
    "blob": "702cf54255d4b8cba12c1806d8f4e0269761e8d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02a369a82e6881c9436cd57cce4a0a3e072b1456ca802146ecca6b236906bbc6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce3dac8b-c48a-d7e1-9ea4-fb1b8a00e33c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–325.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `702cf54255d4b8cba12c1806d8f4e0269761e8d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
