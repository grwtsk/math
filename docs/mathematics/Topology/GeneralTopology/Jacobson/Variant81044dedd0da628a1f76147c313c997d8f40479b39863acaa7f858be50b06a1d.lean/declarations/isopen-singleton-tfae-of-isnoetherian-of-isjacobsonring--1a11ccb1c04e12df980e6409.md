# isOpen_singleton_tfae_of_isNoetherian_of_isJacobsonRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eca234a-31dd-6499-71b5-c68b58ec500d",
  "kind": "lemma",
  "lexical_name": "isOpen_singleton_tfae_of_isNoetherian_of_isJacobsonRing",
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
  "slug": "isopen-singleton-tfae-of-isnoetherian-of-isjacobsonring--1a11ccb1c04e12df980e6409",
  "source": {
    "blob": "bcc6bc98725d49cb45ee281e81790e345d84cdcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a11ccb1c04e12df980e6409c06e14d48325ac593f4ae7aae3873d3d06116ad3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eca234a-31dd-6499-71b5-c68b58ec500d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_singleton_tfae_of_isNoetherian_of_isJacobsonRing
    [IsNoetherianRing R] [IsJacobsonRing R] (x : PrimeSpectrum R) :
    List.TFAE [IsOpen {x}, IsClopen {x}, IsClosed {x} ∧ StableUnderGeneralization {x}] := by
  tfae_have 1 → 2
  | h => by
    obtain ⟨y, rfl : y = x, h'⟩ := exists_isClosed_singleton_of_isJacobsonRing _ h
      ⟨x, Set.mem_singleton x⟩
    exact ⟨h', h⟩
  tfae_have 2 → 3
  | h => ⟨h.isClosed, h.isOpen.stableUnderGeneralization⟩
  tfae_have 3 → 1
  | ⟨h₁, h₂⟩ => by
    rw [isClosed_singleton_iff_isMaximal, ← isMax_iff] at h₁
    suffices {x} = (⋃ p ∈ { p : PrimeSpectrum R | IsMin p ∧ p ≠ x }, closure {p})ᶜ by
      rw [this, isOpen_compl_iff]
      refine Set.Finite.isClosed_biUnion ?_ (fun _ _ ↦ isClosed_closure)
      exact (finite_setOf_isMin R).subset fun x h ↦ h.1
    ext p
    simp only [Set.mem_singleton_iff, ne_eq, Set.mem_setOf_eq, Set.compl_iUnion, Set.mem_iInter,
      Set.mem_compl_iff, and_imp, ← specializes_iff_mem_closure, ← le_iff_specializes,
      not_imp_not]
    constructor
    · rintro rfl _ _
      rw [stableUnderGeneralization_singleton, ← isMin_iff] at h₂
      exact h₂.eq_of_le
    · intros hp
      apply h₁.eq_of_ge
      obtain ⟨q, hq, hq'⟩ := Ideal.exists_minimalPrimes_le (J := p.asIdeal) bot_le
      exact (hp ⟨q, hq.1.1⟩ (isMin_iff.mpr hq) hq').ge.trans hq'
  tfae_finish

end PrimeSpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc6bc98725d49cb45ee281e81790e345d84cdcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
