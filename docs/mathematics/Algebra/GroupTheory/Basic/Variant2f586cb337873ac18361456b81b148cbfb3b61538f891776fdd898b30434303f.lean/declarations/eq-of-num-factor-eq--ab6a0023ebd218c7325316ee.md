# eq_of_num_factor_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf44a79828b938c6400893f676e0b3c79e306139",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4814b73d-67cf-0ed4-ccf1-6a85b4f43841",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d323ec89-39d3-7359-4234-1da5339b7cac",
  "kind": "theorem",
  "lexical_name": "eq_of_num_factor_eq",
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
  "slug": "eq-of-num-factor-eq--ab6a0023ebd218c7325316ee",
  "source": {
    "blob": "cf44a79828b938c6400893f676e0b3c79e306139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 134,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab6a0023ebd218c7325316ee5f01c9c6d2c47348e45b2a0b042fcb1d9eb75275",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d323ec89-39d3-7359-4234-1da5339b7cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem eq_of_num_factor_eq {r r' r₁ r₂ : R} {s t : S} (h : t * r = t * r') :
    r₁ * r * r₂ /ₒ s = r₁ * r' * r₂ /ₒ s := by
  rcases oreCondition r₁ t with ⟨r₁', t', hr₁⟩
  rw [OreLocalization.expand' _ s t', OreLocalization.expand' _ s t']
  congr 1
  -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11215): TODO: use `assoc_rw`?
  calc (t' : R) * (r₁ * r * r₂)
      = t' * r₁ * r * r₂ := by simp [← mul_assoc]
    _ = r₁' * t * r * r₂ := by rw [hr₁]
    _ = r₁' * (t * r) * r₂ := by simp [← mul_assoc]
    _ = r₁' * (t * r') * r₂ := by rw [h]
    _ = r₁' * t * r' * r₂ := by simp [← mul_assoc]
    _ = t' * r₁ * r' * r₂ := by rw [hr₁]
    _ = t' * (r₁ * r' * r₂) := by simp [← mul_assoc]

/-- A function or predicate over `X` and `S` can be lifted to `X[S⁻¹]` if it is invariant
under expansion on the left. -/
@[to_additive "A function or predicate over `X` and `S` can be lifted to the localizaton if it is
invariant under expansion on the left."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant2f586cb337873ac18361456b81b148cbfb3b61538f891776fdd898b30434303f.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf44a79828b938c6400893f676e0b3c79e306139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
