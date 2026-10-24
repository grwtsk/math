# isCoprime_differentIdeal_of_isCoprime_discr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa5b9e34-7657-cc8a-cefd-d376a79797a2",
  "kind": "theorem",
  "lexical_name": "isCoprime_differentIdeal_of_isCoprime_discr",
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
  "slug": "iscoprime-differentideal-of-iscoprime-discr--c438692218f48d8db4c97d15",
  "source": {
    "blob": "c704435797008f41895577f65f1cf04d114bd5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c438692218f48d8db4c97d150bdf53040d8fb384b866d26be3d2044b9002394e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa5b9e34-7657-cc8a-cefd-d376a79797a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoprime_differentIdeal_of_isCoprime_discr {K₁ K₂ : Type*} [Field K₁]
    [NumberField K₁] [Field K₂] [NumberField K₂] [Algebra K₁ L] [Algebra K₂ L]
    (h : IsCoprime (discr K₁) (discr K₂)) :
    IsCoprime ((differentIdeal ℤ (𝓞 K₁)).map (algebraMap (𝓞 K₁) (𝓞 L)))
      ((differentIdeal ℤ (𝓞 K₂)).map (algebraMap (𝓞 K₂) (𝓞 L))) := by
  obtain ⟨u, v, h⟩ := h
  refine Ideal.isCoprime_iff_exists.mpr ⟨u * discr K₁, ?_, v * discr K₂, ?_, ?_⟩
  · apply Ideal.mul_mem_left
    rw [← map_intCast (algebraMap (𝓞 K₁) (𝓞 L))]
    exact Ideal.mem_map_of_mem (algebraMap (𝓞 K₁) (𝓞 L)) <| discr_mem_differentIdeal _ _
  · apply Ideal.mul_mem_left
    rw [← map_intCast (algebraMap (𝓞 K₂) (𝓞 L))]
    exact Ideal.mem_map_of_mem (algebraMap (𝓞 K₂) (𝓞 L)) <| discr_mem_differentIdeal _ _
  rw [← Int.cast_mul, ← Int.cast_mul, ← Int.cast_add, h, Int.cast_one]

variable [NumberField L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Different/Variantf85d8f678e824e9aacb9c9363d4fe48af5f9d02585f9d187459deec4f8288267.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c704435797008f41895577f65f1cf04d114bd5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
