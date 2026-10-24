# isUnit_or_eq_zero_of_isUnit_integerNormalization_primPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e6222858f485c235128d98d33ba0c84aa80c7b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0403711-d90a-ddb4-d239-7034b3aef50f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:344cd1ec-0991-9ed6-dece-b2bed6caeb2f",
  "kind": "theorem",
  "lexical_name": "isUnit_or_eq_zero_of_isUnit_integerNormalization_primPart",
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
  "slug": "isunit-or-eq-zero-of-isunit-integernormalization-primpart--dcac65f1be2070434c25ef49",
  "source": {
    "blob": "5e6222858f485c235128d98d33ba0c84aa80c7b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 217,
    "path": "GRWTSK/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcac65f1be2070434c25ef49df62be3f32414630bdbe96cb1f5496ee77fbbbc9",
  "verification": {
    "reference": "docs/verification/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:344cd1ec-0991-9ed6-dece-b2bed6caeb2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_or_eq_zero_of_isUnit_integerNormalization_primPart {p : K[X]} (h0 : p ≠ 0)
    (h : IsUnit (integerNormalization R⁰ p).primPart) : IsUnit p := by
  rcases isUnit_iff.1 h with ⟨_, ⟨u, rfl⟩, hu⟩
  obtain ⟨⟨c, c0⟩, hc⟩ := integerNormalization_map_to_map R⁰ p
  rw [Subtype.coe_mk, Algebra.smul_def, algebraMap_apply] at hc
  apply isUnit_of_mul_isUnit_right
  rw [← hc, (integerNormalization R⁰ p).eq_C_content_mul_primPart, ← hu, ← RingHom.map_mul,
    isUnit_iff]
  refine
    ⟨algebraMap R K ((integerNormalization R⁰ p).content * ↑u), isUnit_iff_ne_zero.2 fun con => ?_,
      by simp⟩
  replace con := (injective_iff_map_eq_zero (algebraMap R K)).1 (IsFractionRing.injective _ _) _ con
  rw [mul_eq_zero, content_eq_zero_iff, IsFractionRing.integerNormalization_eq_zero_iff] at con
  rcases con with (con | con)
  · apply h0 con
  · apply Units.ne_zero _ con

/-- **Gauss's Lemma** for GCD domains states that a primitive polynomial is irreducible iff it is
  irreducible in the fraction field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6222858f485c235128d98d33ba0c84aa80c7b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
