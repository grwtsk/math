# iff_zero_iff_lTensor_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:712dbe08-b539-f984-09b6-c2bb7189ca89",
  "kind": "lemma",
  "lexical_name": "iff_zero_iff_lTensor_zero",
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
  "slug": "iff-zero-iff-ltensor-zero--ecb28d5905d339cd66eecc5c",
  "source": {
    "blob": "4695061faeb54502a8902c55c53c188f64a20c06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 509,
    "path": "GRWTSK/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecb28d5905d339cd66eecc5cfb206e931d201278dc3c8d980b413249e9374625",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:712dbe08-b539-f984-09b6-c2bb7189ca89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_zero_iff_lTensor_zero :
    FaithfullyFlat R M ↔
    (Module.Flat R M ∧
      (∀ {N : Type max u v} [AddCommGroup N] [Module R N]
        {N' : Type max u v} [AddCommGroup N'] [Module R N']
        (f : N →ₗ[R] N'), f.lTensor M = 0 ↔ f = 0)) :=
  ⟨fun fl => ⟨inferInstance, fun f => zero_iff_lTensor_zero R M f |>.symm⟩,
    fun ⟨flat, Z⟩ => iff_flat_and_lTensor_reflects_triviality R M |>.2 ⟨flat, fun N _ _ _ => by
      have := Z (LinearMap.id : N →ₗ[R] N) |>.1 (by ext; exact Subsingleton.elim _ _)
      rw [subsingleton_iff_forall_eq 0]
      exact fun y => congr($this y)⟩⟩

/--
An `R`-module `M` is faithfully flat iff it is flat and for all linear maps `f`, the map
`id ⊗ f = 0`, if and only if `f = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4695061faeb54502a8902c55c53c188f64a20c06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
