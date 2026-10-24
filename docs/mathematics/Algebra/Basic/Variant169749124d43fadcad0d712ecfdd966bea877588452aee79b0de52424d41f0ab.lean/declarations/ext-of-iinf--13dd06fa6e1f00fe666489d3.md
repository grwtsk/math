# ext_of_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47680fcc-8d44-9bbd-d8b4-ff3b7c8bb036",
  "kind": "theorem",
  "lexical_name": "ext_of_iInf",
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
  "slug": "ext-of-iinf--13dd06fa6e1f00fe666489d3",
  "source": {
    "blob": "76a7b72d02ce969e004c43f9f5665600b43abcca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 146,
    "path": "GRWTSK/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13dd06fa6e1f00fe666489d356ba78da71730a8d03988792c874b275156bbcc9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47680fcc-8d44-9bbd-d8b4-ff3b7c8bb036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_of_iInf [FormallyUnramified R A] (hI : ⨅ i, I ^ i = ⊥) {g₁ g₂ : A →ₐ[R] B}
    (H : ∀ x, Ideal.Quotient.mk I (g₁ x) = Ideal.Quotient.mk I (g₂ x)) : g₁ = g₂ := by
  have (i : ℕ) :
      (Ideal.Quotient.mkₐ R (I ^ i)).comp g₁ = (Ideal.Quotient.mkₐ R (I ^ i)).comp g₂ := by
    by_cases hi : i = 0
    · ext x
      have : Subsingleton (B ⧸ I ^ i) := by
        rw [hi, pow_zero, Ideal.one_eq_top]
        infer_instance
      exact Subsingleton.elim _ _
    apply ext (I.map (algebraMap _ _)) ⟨i, by simp [← Ideal.map_pow]⟩
    intro x
    dsimp
    rw [Ideal.Quotient.eq, ← map_sub, ← Ideal.mem_comap, Ideal.comap_map_of_surjective',
      sup_eq_left.mpr, ← Ideal.Quotient.eq]
    · exact H _
    · simpa using Ideal.pow_le_self hi
    · exact Ideal.Quotient.mk_surjective
  ext x
  rw [← sub_eq_zero, ← Ideal.mem_bot, ← hI, Ideal.mem_iInf]
  intro i
  rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, sub_eq_zero]
  exact DFunLike.congr_fun (this i) x

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant169749124d43fadcad0d712ecfdd966bea877588452aee79b0de52424d41f0ab.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76a7b72d02ce969e004c43f9f5665600b43abcca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
