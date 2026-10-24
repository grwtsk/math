# isOpen_singleton_tfae_of_isNoetherian_of_isJacobsonRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31db5992ef94532287e99a8dba689484fef71b06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c411c73-8610-4a2f-8787-2a53fc78b2ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddcc1d61-a610-b2d4-43ea-fed2d32b100b",
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
  "slug": "isopen-singleton-tfae-of-isnoetherian-of-isjacobsonring--1de6af2ce30f5a03f7991ccf",
  "source": {
    "blob": "31db5992ef94532287e99a8dba689484fef71b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1de6af2ce30f5a03f7991ccf7b6c42f278241b2194027550b0357275cb523121",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddcc1d61-a610-b2d4-43ea-fed2d32b100b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–107.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31db5992ef94532287e99a8dba689484fef71b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
