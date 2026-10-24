# Ring.krullDimLE_zero_and_isLocalRing_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fae31f7629471b9e47e583f963a09b3efe8aaca2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/54015fe90aa45fe5c5a8126b291af4ecc85682d309ad41d6aa124de23f87c582.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:065e9a12-2247-df04-e031-bebca63e1203",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3858a0e-945b-654e-8848-a56818fc1b30",
  "kind": "lemma",
  "lexical_name": "Ring.krullDimLE_zero_and_isLocalRing_tfae",
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
  "slug": "ring-krulldimle-zero-and-islocalring-tfae--6a02b23beed3bd269c9ffe0b",
  "source": {
    "blob": "fae31f7629471b9e47e583f963a09b3efe8aaca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 85,
    "path": "GRWTSK/Algebra/Zero/Variant54015fe90aa45fe5c5a8126b291af4ecc85682d309ad41d6aa124de23f87c582.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a02b23beed3bd269c9ffe0b8059e69953276563be4908a1ffbef5e253ecbe13",
  "verification": {
    "reference": "docs/verification/Algebra/Zero/Variant54015fe90aa45fe5c5a8126b291af4ecc85682d309ad41d6aa124de23f87c582.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3858a0e-945b-654e-8848-a56818fc1b30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ring.krullDimLE_zero_and_isLocalRing_tfae :
    List.TFAE
    [ Ring.KrullDimLE 0 R ∧ IsLocalRing R,
      ∃! I : Ideal R, I.IsPrime,
      ∀ x : R, IsNilpotent x ↔ ¬ IsUnit x,
      (nilradical R).IsMaximal ] := by
  tfae_have 1 → 3 := by
    intro ⟨h₁, h₂⟩ x
    change x ∈ nilradical R ↔ x ∈ IsLocalRing.maximalIdeal R
    rw [nilradical, Ideal.radical_eq_sInf]
    simp [← Ideal.isMaximal_iff_isPrime, IsLocalRing.isMaximal_iff]
  tfae_have 3 → 4 := by
    refine fun H ↦ ⟨fun e ↦ ?_, fun I hI ↦ ?_⟩
    · obtain ⟨n, hn⟩ := (Ideal.eq_top_iff_one _).mp e
      exact (H 0).mp .zero ((show (1 : R) = 0 by simpa using hn) ▸ isUnit_one)
    · obtain ⟨x, hx, hx'⟩ := (SetLike.lt_iff_le_and_exists.mp hI).2
      exact Ideal.eq_top_of_isUnit_mem _ hx (not_not.mp ((H x).not.mp hx'))
  tfae_have 4 → 2 := fun H ↦ ⟨_, H.isPrime, fun p (hp : p.IsPrime) ↦
      (H.eq_of_le hp.ne_top (nilradical_le_prime p)).symm⟩
  tfae_have 2 → 1 := by
    rintro ⟨P, hP₁, hP₂⟩
    obtain ⟨P, hP₃, -⟩ := P.exists_le_maximal hP₁.ne_top
    obtain rfl := hP₂ P hP₃.isPrime
    exact ⟨.mk₀ fun Q h ↦ hP₂ Q h ▸ hP₃, .of_unique_max_ideal ⟨P, hP₃, fun Q h ↦ hP₂ Q h.isPrime⟩⟩
  tfae_finish

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Zero/Variant54015fe90aa45fe5c5a8126b291af4ecc85682d309ad41d6aa124de23f87c582.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Zero/Variant54015fe90aa45fe5c5a8126b291af4ecc85682d309ad41d6aa124de23f87c582.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fae31f7629471b9e47e583f963a09b3efe8aaca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
