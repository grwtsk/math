# Module.FaithfullyFlat.of_isIntegral_of_isDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6240f3fd948791cfcde3b001a1e48d31ab30e6c20999d71928c85eff42f4a23",
  "kind": "instance",
  "lexical_name": "Module.FaithfullyFlat.of_isIntegral_of_isDomain",
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
  "slug": "module-faithfullyflat-of-isintegral-of-isdomain--4b571078961457184e16113a",
  "source": {
    "blob": "283c4cf0a956dfeba81e210652ebcc48f2ec51ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b571078961457184e16113adb2eb5e6374fc10b639a92ab8c96446b81014d7b",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6240f3fd948791cfcde3b001a1e48d31ab30e6c20999d71928c85eff42f4a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Module.FaithfullyFlat.of_isIntegral_of_isDomain [IsDomain B] [Module.Flat A B]
    [Algebra.IsIntegral A B] [FaithfulSMul A B] :
    Module.FaithfullyFlat A B := by
  refine Module.FaithfullyFlat.of_comap_surjective fun P ↦ ?_
  obtain ⟨P, hP₁, hP₂⟩ := Ideal.exists_ideal_over_prime_of_isIntegral_of_isDomain P.1 (S := B)
    (by simp [(RingHom.injective_iff_ker_eq_bot _).mp (FaithfulSMul.algebraMap_injective A B)])
  exact ⟨⟨P, hP₁⟩, PrimeSpectrum.ext_iff.mpr hP₂⟩

variable [Module.FaithfullyFlat A B]

/-- If `B` is a faithfully flat `A`-module and `M` is any `A`-module, the canonical
map `M →ₗ[A] B ⊗[A] M` is injective.

See also `Module.Flat.tensorProduct_mk_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant690c02da4f2bb71dd3877b6cf52e3c6c363047177617d3cf40eb1ca83aa09af6.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283c4cf0a956dfeba81e210652ebcc48f2ec51ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
