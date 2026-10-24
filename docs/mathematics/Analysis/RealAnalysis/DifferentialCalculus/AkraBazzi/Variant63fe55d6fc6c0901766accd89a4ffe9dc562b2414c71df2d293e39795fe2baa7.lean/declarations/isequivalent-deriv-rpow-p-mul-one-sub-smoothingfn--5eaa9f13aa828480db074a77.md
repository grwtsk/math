# isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "baeda98308c375f8666587f7704258a9e005f82e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69eff340-daa1-14c8-e763-6543c98f9ce6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e9825fa-8dad-2297-41a6-71cf4948979b",
  "kind": "lemma",
  "lexical_name": "isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn",
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
  "slug": "isequivalent-deriv-rpow-p-mul-one-sub-smoothingfn--5eaa9f13aa828480db074a77",
  "source": {
    "blob": "baeda98308c375f8666587f7704258a9e005f82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eaa9f13aa828480db074a77bea94c990b3bbc5decb22ae63314b26b52ddede7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e9825fa-8dad-2297-41a6-71cf4948979b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn {p : ℝ} (hp : p ≠ 0) :
    deriv (fun z => z ^ p * (1 - ε z)) ~[atTop] fun z => p * z ^ (p - 1) :=
  calc deriv (fun z => z ^ p * (1 - ε z))
    _ =ᶠ[atTop] fun z => p * z ^ (p - 1) * (1 - ε z) + z ^ (p - 1) / (log z ^ 2) :=
      eventually_deriv_rpow_p_mul_one_sub_smoothingFn p
    _ ~[atTop] fun z => p * z ^ (p - 1) := by
      refine IsEquivalent.add_isLittleO ?one ?two
      case one => calc
        (fun z => p * z ^ (p - 1) * (1 - ε z)) ~[atTop] fun z => p * z ^ (p - 1) * 1 :=
              IsEquivalent.mul IsEquivalent.refl isEquivalent_one_sub_smoothingFn_one
        _ = fun z => p * z ^ (p - 1) := by ext; ring
      case two => calc
        (fun z => z ^ (p - 1) / (log z ^ 2)) =o[atTop] fun z => z ^ (p - 1) / 1 := by
          simp_rw [div_eq_mul_inv]
          refine IsBigO.mul_isLittleO (isBigO_refl _ _)
            (IsLittleO.inv_rev ?_ (by simp))
          rw [isLittleO_const_left]
          refine Or.inr <| Tendsto.comp tendsto_norm_atTop_atTop ?_
          exact Tendsto.comp (g := fun z => z ^ 2)
            (tendsto_pow_atTop (by norm_num)) tendsto_log_atTop
        _ = fun z => z ^ (p - 1) := by ext; simp
        _ =Θ[atTop] fun z => p * z ^ (p - 1) := IsTheta.const_mul_right hp <| isTheta_refl _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baeda98308c375f8666587f7704258a9e005f82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
