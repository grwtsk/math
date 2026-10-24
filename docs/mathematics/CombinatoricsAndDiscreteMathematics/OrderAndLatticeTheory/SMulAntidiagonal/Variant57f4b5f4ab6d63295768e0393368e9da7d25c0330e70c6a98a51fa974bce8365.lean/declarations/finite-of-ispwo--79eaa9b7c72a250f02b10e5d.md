# finite_of_isPWO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6257d120822c5e45929845e82e097eacbac5dedc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8f803c0-1a43-2c34-c5ed-7b8b75ecf090",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a174a144-548f-f2e4-c5d2-2905d38920a6",
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
  "slug": "finite-of-ispwo--79eaa9b7c72a250f02b10e5d",
  "source": {
    "blob": "6257d120822c5e45929845e82e097eacbac5dedc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variant57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79eaa9b7c72a250f02b10e5de3f161a3e208cd9b45213416635437378a68bf10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variant57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a174a144-548f-f2e4-c5d2-2905d38920a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_isPWO (hs : s.IsPWO) (ht : t.IsPWO) (a) : (smulAntidiagonal s t a).Finite := by
  refine Set.not_infinite.1 fun h => ?_
  have h1 : (smulAntidiagonal s t a).PartiallyWellOrderedOn (Prod.fst ⁻¹'o (· ≤ ·)) :=
    fun f ↦ hs fun n ↦ ⟨_, (mem_smulAntidiagonal.1 (f n).2).1⟩
  have h2 : (smulAntidiagonal s t a).PartiallyWellOrderedOn (Prod.snd ⁻¹'o (· ≤ ·)) :=
    fun f ↦ ht fun n ↦ ⟨_, (mem_smulAntidiagonal.1 (f n).2).2.1⟩
  obtain ⟨g, hg⟩ := h1.exists_monotone_subseq fun n ↦ (h.natEmbedding _ n).2
  obtain ⟨m, n, mn, h2'⟩ := h2 fun n ↦ h.natEmbedding _ _
  refine mn.ne (g.injective <| (h.natEmbedding _).injective ?_)
  exact eq_of_fst_le_fst_of_snd_le_snd (hg _ _ mn.le) h2'

end Set.SMulAntidiagonal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variant57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variant57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6257d120822c5e45929845e82e097eacbac5dedc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
