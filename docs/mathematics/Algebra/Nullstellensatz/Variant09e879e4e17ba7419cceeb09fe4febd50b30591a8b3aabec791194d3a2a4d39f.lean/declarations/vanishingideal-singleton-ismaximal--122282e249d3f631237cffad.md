# vanishingIdeal_singleton_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:daf1f4b098947944b69ac0a909a54092ddba6d55423e38e07491bed8c79f04fd",
  "kind": "instance",
  "lexical_name": "vanishingIdeal_singleton_isMaximal",
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
  "slug": "vanishingideal-singleton-ismaximal--122282e249d3f631237cffad",
  "source": {
    "blob": "9b0c0206f2ad211b81a60224396d32cec6fb6d9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:122282e249d3f631237cffad829d489a1ccc5068d5e67c5d2f9d9e1d210ff531",
  "verification": {
    "reference": "docs/verification/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:daf1f4b098947944b69ac0a909a54092ddba6d55423e38e07491bed8c79f04fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance vanishingIdeal_singleton_isMaximal {x : σ → k} :
    (vanishingIdeal {x} : Ideal (MvPolynomial σ k)).IsMaximal := by
  have : Function.Bijective
      (Ideal.Quotient.lift _ (eval x) fun p h ↦ (mem_vanishingIdeal_singleton_iff x p).mp h) := by
    refine ⟨(injective_iff_map_eq_zero _).mpr fun p hp ↦ ?_, fun z ↦
      ⟨(Ideal.Quotient.mk (vanishingIdeal {x} : Ideal (MvPolynomial σ k))) (C z), by simp⟩⟩
    obtain ⟨q, rfl⟩ := Ideal.Quotient.mk_surjective p
    rwa [Ideal.Quotient.lift_mk, ← mem_vanishingIdeal_singleton_iff,
      ← Quotient.eq_zero_iff_mem] at hp
  rw [← bot_quotient_isMaximal_iff, isMaximal_iff_of_bijective _ this]
  exact bot_isMaximal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b0c0206f2ad211b81a60224396d32cec6fb6d9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
