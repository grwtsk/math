# integerSetEquivNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe3425e8cdac938848b0f0c6f947554989b602b47a3bf10acef7c7920263d7de",
  "kind": "def",
  "lexical_name": "integerSetEquivNorm",
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
  "slug": "integersetequivnorm--daf0eb01f692616d26d5b145",
  "source": {
    "blob": "14937dc62d4fec76769bc748423b8cd19e70d07c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 447,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daf0eb01f692616d26d5b14545cce19f1cf8423b03b9245d6b2acfa3910079fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe3425e8cdac938848b0f0c6f947554989b602b47a3bf10acef7c7920263d7de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def integerSetEquivNorm (n : ℕ) :
    {a : integerSet K // mixedEmbedding.norm (a : mixedSpace K) = n} ≃
      {I : (Ideal (𝓞 K))⁰ // IsPrincipal (I : Ideal (𝓞 K)) ∧
        absNorm (I : Ideal (𝓞 K)) = n} × (torsion K) :=
  calc
    _ ≃ {I : {I : (Ideal (𝓞 K))⁰ // IsPrincipal I.1} × torsion K //
          absNorm (I.1 : Ideal (𝓞 K)) = n} :=
      Equiv.subtypeEquiv (integerSetEquiv K) fun _ ↦ by simp_rw [← intNorm_coe, intNorm,
        Nat.cast_inj, integerSetEquiv_apply_fst, absNorm_span_singleton]
    _ ≃ {I : {I : (Ideal (𝓞 K))⁰ // IsPrincipal I.1} // absNorm (I.1 : Ideal (𝓞 K)) = n} ×
          torsion K := Equiv.prodSubtypeFstEquivSubtypeProd
      (p := fun I : {I : (Ideal (𝓞 K))⁰ // IsPrincipal I.1} ↦ absNorm (I : Ideal (𝓞 K)) = n)
    _ ≃ {I : (Ideal (𝓞 K))⁰ // IsPrincipal (I : Ideal (𝓞 K)) ∧
          absNorm (I : Ideal (𝓞 K)) = n} × (torsion K) := Equiv.prodCongrLeft fun _ ↦
      (Equiv.subtypeSubtypeEquivSubtypeInter
        (fun I : (Ideal (𝓞 K))⁰ ↦ IsPrincipal I.1) (fun I ↦ absNorm I.1 = n))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14937dc62d4fec76769bc748423b8cd19e70d07c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
