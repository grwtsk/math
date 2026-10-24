# PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4a487cd-acb2-f673-2d74-af1e87972931",
  "kind": "lemma",
  "lexical_name": "PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable",
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
  "slug": "primespectrum-ishomeomorph-comap-of-ispurelyinseparable--a0f561052215a2f6ee5bc608",
  "source": {
    "blob": "c82bc15aabdf28c0b1cb60e6304533c79851d986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0f561052215a2f6ee5bc608ee192b8f65f3ef200c2520c6dea83f4cd115ff0c",
  "verification": {
    "reference": "docs/verification/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4a487cd-acb2-f673-2d74-af1e87972931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable [IsPurelyInseparable k K] :
    IsHomeomorph (comap <| algebraMap R (R ⊗[k] K)) := by
  let q := ringExpChar k
  refine isHomeomorph_comap _ (IsPurelyInseparable.exists_pow_mem_range_tensorProduct) ?_
  convert bot_le
  rw [← RingHom.injective_iff_ker_eq_bot]
  exact Algebra.TensorProduct.includeLeft_injective (S := R) (algebraMap k K).injective

/-- If `L` is a purely inseparable extension of `K` over `R` and `S` is an `R`-algebra,
the induced map `Spec (L ⊗[R] S) ⟶ Spec (K ⊗[R] S)` is a homeomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Homeomorph/Variant1dab4a9df4f80cf094800ad4122b0e332dee198ce8c60ccda5248148336c6d74.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82bc15aabdf28c0b1cb60e6304533c79851d986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
