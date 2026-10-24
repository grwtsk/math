# Nobeling.isClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e7b46da-40e2-a16c-e9be-de64c8ccd7d5",
  "kind": "theorem",
  "lexical_name": "Nobeling.isClosedEmbedding",
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
  "slug": "nobeling-isclosedembedding--51551f32e0fb282c31c9ae72",
  "source": {
    "blob": "3becd4f8156cb9cf0b97e84c503df8568eeda765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 128,
    "path": "GRWTSK/Topology/Induction/Variant62cb0e963a955868979ceb690d282b140398ca15f86ad8e7e4ec4d50bea86a29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51551f32e0fb282c31c9ae72bfac661ebe2a964d69e5e0ce337410d6ef2bb38c",
  "verification": {
    "reference": "docs/verification/Topology/Induction/Variant62cb0e963a955868979ceb690d282b140398ca15f86ad8e7e4ec4d50bea86a29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e7b46da-40e2-a16c-e9be-de64c8ccd7d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nobeling.isClosedEmbedding : IsClosedEmbedding (Nobeling.ι S) := by
  apply Continuous.isClosedEmbedding
  · dsimp +unfoldPartialApp [ι]
    refine continuous_pi ?_
    intro C
    rw [← IsLocallyConstant.iff_continuous]
    refine ((IsLocallyConstant.tfae _).out 0 3).mpr ?_
    rintro ⟨⟩
    · refine IsClopen.isOpen (isClopen_compl_iff.mp ?_)
      convert C.2
      ext x
      simp only [Set.mem_compl_iff, Set.mem_preimage, Set.mem_singleton_iff,
        decide_eq_false_iff_not, not_not]
    · refine IsClopen.isOpen ?_
      convert C.2
      ext x
      simp only [Set.mem_preimage, Set.mem_singleton_iff, decide_eq_true_eq]
  · intro a b h
    by_contra hn
    obtain ⟨C, hC, hh⟩ := exists_isClopen_of_totally_separated hn
    apply hh.2 ∘ of_decide_eq_true
    dsimp +unfoldPartialApp [ι] at h
    rw [← congr_fun h ⟨C, hC⟩]
    exact decide_eq_true hh.1

@[deprecated (since := "2024-10-26")]
alias Nobeling.embedding := Nobeling.isClosedEmbedding

end Profinite

open Profinite NobelingProof

/-- **Nöbeling's theorem**. The `ℤ`-module `LocallyConstant S ℤ` is free for every
`S : Profinite`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Induction/Variant62cb0e963a955868979ceb690d282b140398ca15f86ad8e7e4ec4d50bea86a29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Induction/Variant62cb0e963a955868979ceb690d282b140398ca15f86ad8e7e4ec4d50bea86a29.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3becd4f8156cb9cf0b97e84c503df8568eeda765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
