# Algebra.weaklyQuasiFiniteAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bd430b7-b0ca-577e-3e3c-55e3b6b0e88b",
  "kind": "lemma",
  "lexical_name": "Algebra.weaklyQuasiFiniteAt_iff",
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
  "slug": "algebra-weaklyquasifiniteat-iff--0ad62eaaae0ddac09346d03c",
  "source": {
    "blob": "94f914666f91dcb8574ec13add3fd8b912babef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 62,
    "path": "GRWTSK/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad62eaaae0ddac09346d03cd671e02014748e32d580e091b9a3c0a9bd54b5e1",
  "verification": {
    "reference": "docs/verification/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bd430b7-b0ca-577e-3e3c-55e3b6b0e88b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.weaklyQuasiFiniteAt_iff :
    Algebra.WeaklyQuasiFiniteAt R q ↔
      Algebra.QuasiFinite R (Localization.AtPrime q ⧸
        (q.under R).map (algebraMap R (Localization.AtPrime q))) := by
  let q' := q.map (Ideal.Quotient.mk ((q.under R).map (algebraMap R S)))
  have hq' : q = q'.comap (Ideal.Quotient.mk _) := .trans
    (by simp [← RingHom.ker_eq_comap_bot, Ideal.map_comap_le])
    (Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective _).symm
  let φ₁ : Localization.AtPrime q →ₐ[R] Localization.AtPrime q' :=
    Localization.localAlgHom _ _ (Ideal.Quotient.mkₐ _ _) hq'
  have hφ₁ : Function.Surjective φ₁ :=
    (RingHom.surjectiveOnStalks_of_surjective
      Ideal.Quotient.mk_surjective).localRingHom_surjective _ _ hq'
  refine Algebra.QuasiFinite.iff_of_algEquiv ((Ideal.quotientEquivAlg _ _ (.refl) ?_).trans
    (Ideal.quotientKerAlgEquivOfSurjective hφ₁)).symm
  ext x
  obtain ⟨x, ⟨s, hs⟩, rfl⟩ := IsLocalization.exists_mk'_eq q.primeCompl x
  simp [φ₁, IsScalarTower.algebraMap_eq R S (Localization.AtPrime q), ← Ideal.map_map,
    IsLocalization.mk'_mem_map_algebraMap_iff, IsLocalization.mk'_eq_zero_iff,
    Ideal.Quotient.mk_surjective.exists, ← map_mul, Ideal.Quotient.eq_zero_iff_mem,
    ← Ideal.mem_comap, ← hq']

namespace Algebra.WeaklyQuasiFiniteAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f914666f91dcb8574ec13add3fd8b912babef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
