# _root_.CStarAlgebra.isStrictlyPositive_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "732ddfe217a6b1ddb950ddac65b28a8ebe04e6af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 813,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57340c61-6c06-ee51-f752-da1b31be4474",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73968b61-3c5f-298e-269c-9db9eeadaa84",
  "kind": "theorem",
  "lexical_name": "_root_.CStarAlgebra.isStrictlyPositive_TFAE",
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
  "slug": "root-cstaralgebra-isstrictlypositive-tfae--eae2b49f2a2a49ccc6b8e454",
  "source": {
    "blob": "732ddfe217a6b1ddb950ddac65b28a8ebe04e6af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 835,
    "line": 813,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae2b49f2a2a49ccc6b8e454387c42b9404dcf643f097151c619ec3a21501614",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73968b61-3c5f-298e-269c-9db9eeadaa84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–835.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.CStarAlgebra.isStrictlyPositive_TFAE {a : A} :
    [IsStrictlyPositive a,
     IsStrictlyPositive (sqrt a) ∧ a = sqrt a * sqrt a,
     IsUnit (sqrt a) ∧ a = sqrt a * sqrt a,
     ∃ b, IsStrictlyPositive b ∧ a = b * b,
     ∃ b, IsUnit b ∧ IsSelfAdjoint b ∧ a = b * b,
     ∃ b, IsUnit b ∧ a = star b * b,
     ∃ b, IsUnit b ∧ a = b * star b,
     0 ≤ a ∧ IsUnit a,
     IsSelfAdjoint a ∧ ∀ x ∈ spectrum ℝ a, 0 < x].TFAE := by
  tfae_have 1 ↔ 8 := IsStrictlyPositive.iff_of_unital
  tfae_have 1 ↔ 9 := ⟨fun h => ⟨h.isSelfAdjoint,
      StarOrderedRing.isStrictlyPositive_iff_spectrum_pos a |>.mp h⟩,
    fun h => (StarOrderedRing.isStrictlyPositive_iff_spectrum_pos a).mpr h.2⟩
  tfae_have 1 → 2 := fun h => ⟨h.sqrt, sqrt_mul_sqrt_self a |>.symm⟩
  tfae_have 2 → 3 := fun h => ⟨h.1.isUnit, h.2⟩
  tfae_have 3 → 4 := fun h => ⟨sqrt a, h.1.isStrictlyPositive (sqrt_nonneg _), h.2⟩
  tfae_have 4 → 5 := fun ⟨b, hb, hab⟩ => ⟨b, hb.isUnit, hb.isSelfAdjoint, hab⟩
  tfae_have 5 → 6 := fun ⟨b, hb, hbsa, hab⟩ => ⟨b, hb, hbsa.symm ▸ hab⟩
  tfae_have 6 → 7 := fun ⟨b, hb, hab⟩ => ⟨star b, hb.star, star_star b |>.symm ▸ hab⟩
  tfae_have 7 → 8 := fun ⟨b, hb, hab⟩ => ⟨hab ▸ mul_star_self_nonneg _, hab ▸ hb.mul hb.star⟩
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `732ddfe217a6b1ddb950ddac65b28a8ebe04e6af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
