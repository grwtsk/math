# finite_of_isPWO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2395bc25d0230d1d8e0a07c77ffd69ff63f9273",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ec9f7d6-a9a3-7e66-a1b1-029f46579cbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8db72da-878a-6974-92d0-a5b6e2ed26ed",
  "kind": "theorem",
  "lexical_name": "finite_of_isPWO",
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
  "slug": "finite-of-ispwo--726228bdbcb1fc99de9ca118",
  "source": {
    "blob": "a2395bc25d0230d1d8e0a07c77ffd69ff63f9273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:726228bdbcb1fc99de9ca118027eda3113d5d63b16094a11d2af11fed20113a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8db72da-878a-6974-92d0-a5b6e2ed26ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_isPWO (hs : s.IsPWO) (ht : t.IsPWO) (a) : (mulAntidiagonal s t a).Finite := by
  refine not_infinite.1 fun h => ?_
  have h1 : (mulAntidiagonal s t a).PartiallyWellOrderedOn (Prod.fst ⁻¹'o (· ≤ ·)) :=
    fun f ↦ hs fun n ↦ ⟨_, (mem_mulAntidiagonal.1 (f n).2).1⟩
  have h2 : (mulAntidiagonal s t a).PartiallyWellOrderedOn (Prod.snd ⁻¹'o (· ≤ ·)) :=
    fun f ↦ ht fun n ↦ ⟨_, (mem_mulAntidiagonal.1 (f n).2).2.1⟩
  obtain ⟨g, hg⟩ :=
    h1.exists_monotone_subseq fun n ↦ (h.natEmbedding _ n).2
  obtain ⟨m, n, mn, h2'⟩ := h2 fun n ↦ h.natEmbedding _ _
  refine mn.ne (g.injective <| (h.natEmbedding _).injective ?_)
  exact eq_of_fst_le_fst_of_snd_le_snd _ _ _ (hg _ _ mn.le) h2'

end OrderedCancelCommMonoid

variable [CancelCommMonoid α] [LinearOrder α] [MulLeftMono α] [MulRightStrictMono α]

@[to_additive Set.AddAntidiagonal.finite_of_isWF]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MulAntidiagonal/Variantc04a3a26bd732700662401d206168e49bebf04630feeec4676cf1f0d276088f5.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2395bc25d0230d1d8e0a07c77ffd69ff63f9273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
