# Module.length_eq_add_of_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd8a49d0-971c-fb19-3fa9-738a9cfdfc5a",
  "kind": "lemma",
  "lexical_name": "Module.length_eq_add_of_exact",
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
  "slug": "module-length-eq-add-of-exact--3e4fbaf67cdcb1580ad52d15",
  "source": {
    "blob": "ce4267e1ee64cc3512e8131b8e1eedee64a949b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e4fbaf67cdcb1580ad52d15d44e87f68f7dfc096fb11f028989f3ce2815ca77",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd8a49d0-971c-fb19-3fa9-738a9cfdfc5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.length_eq_add_of_exact :
    Module.length R M = Module.length R N + Module.length R P := by
  by_cases hP : IsFiniteLength R P
  · by_cases hN : IsFiniteLength R N
    · obtain ⟨s, hs₁, hs₂⟩ := isFiniteLength_iff_exists_compositionSeries.mp hP
      obtain ⟨t, ht₁, ht₂⟩ := isFiniteLength_iff_exists_compositionSeries.mp hN
      let s' : CompositionSeries (Submodule R M) :=
        s.map ⟨Submodule.comap g, Submodule.comap_covBy_of_surjective hg⟩
      let t' : CompositionSeries (Submodule R M) :=
        t.map ⟨Submodule.map f, Submodule.map_covBy_of_injective hf⟩
      have hfg : Submodule.map f ⊤ = Submodule.comap g ⊥ := by
        rw [Submodule.map_top, Submodule.comap_bot, LinearMap.exact_iff.mp H]
      let r := t'.smash s' (by simpa [s', t', hs₁, ht₂] using hfg)
      rw [← Module.length_compositionSeries s hs₁ hs₂,
        ← Module.length_compositionSeries t ht₁ ht₂,
        ← Module.length_compositionSeries r
          (by simpa [r, t', ht₁, -Submodule.map_bot] using Submodule.map_bot f)
          (by simpa [r, s', hs₂, -Submodule.comap_top] using Submodule.comap_top g)]
      simp_rw [r, RelSeries.smash_length, Nat.cast_add, s', t', RelSeries.map_length]
    · have := mt (IsFiniteLength.of_injective · hf) hN
      rw [← Module.length_ne_top_iff, ne_eq, not_not] at hN this
      rw [hN, this, top_add]
  · have := mt (IsFiniteLength.of_surjective · hg) hP
    rw [← Module.length_ne_top_iff, ne_eq, not_not] at hP this
    rw [hP, this, add_top]

include hf in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Length/Variantff5bf4b7d99ad7e0b5525e135a84cb745c8af15a82e041ab5b5b9db07f4c9fac.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4267e1ee64cc3512e8131b8e1eedee64a949b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
