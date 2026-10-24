# idealSetEquivNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cf0280c68d8895d28bd87b1ea5b227065de8ee696b45f6611ba8515a162dd61",
  "kind": "def",
  "lexical_name": "idealSetEquivNorm",
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
  "slug": "idealsetequivnorm--b5abf6250ac1ddb77443f5c9",
  "source": {
    "blob": "4d9efdbfb803a680bf1c8089737c33a7b147a59d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 539,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5abf6250ac1ddb77443f5c9fe266095bd9ad81d1787f4b98fb50d206b5ac863",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cf0280c68d8895d28bd87b1ea5b227065de8ee696b45f6611ba8515a162dd61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idealSetEquivNorm (n : ℕ) :
    {a : idealSet K J // mixedEmbedding.norm (a : mixedSpace K) = n} ≃
      {I : (Ideal (𝓞 K))⁰ // (J : Ideal (𝓞 K)) ∣ I ∧ IsPrincipal (I : Ideal (𝓞 K)) ∧
        absNorm (I : Ideal (𝓞 K)) = n} × (torsion K) :=
  calc
    _ ≃ {a : {a : integerSet K // (preimageOfMemIntegerSet a).1 ∈ J.1} //
            mixedEmbedding.norm a.1.1 = n} := by
        convert! (Equiv.subtypeEquivOfSubtype (idealSetEquiv K J).symm).symm using 3
        rw [idealSetEquiv_symm_apply]
    _ ≃ {a : integerSet K // (preimageOfMemIntegerSet a).1 ∈ J.1 ∧
          mixedEmbedding.norm a.1 = n} := Equiv.subtypeSubtypeEquivSubtypeInter
        (fun a : integerSet K ↦ (preimageOfMemIntegerSet a).1 ∈ J.1)
        (fun a ↦ mixedEmbedding.norm a.1 = n)
    _ ≃ {a : {a :integerSet K // mixedEmbedding.norm a.1 = n} //
          (preimageOfMemIntegerSet a.1).1 ∈ J.1} := ((Equiv.subtypeSubtypeEquivSubtypeInter
        (fun a : integerSet K ↦ mixedEmbedding.norm a.1 = n)
        (fun a ↦ (preimageOfMemIntegerSet a).1 ∈ J.1)).trans
        (Equiv.subtypeEquivRight (fun _ ↦ by simp [and_comm]))).symm
    _ ≃ {I : {I : (Ideal (𝓞 K))⁰ // IsPrincipal I.1 ∧ absNorm I.1 = n} × (torsion K) //
          J.1 ∣ I.1.1} := by
      convert! Equiv.subtypeEquivOfSubtype (p := fun I ↦ J.1 ∣ I.1) (integerSetEquivNorm K n)
      rw [integerSetEquivNorm_apply_fst, dvd_span_singleton]
    _ ≃ {I : {I : (Ideal (𝓞 K))⁰ // IsPrincipal I.1 ∧ absNorm I.1 = n} // J.1 ∣ I.1} ×
        (torsion K) := Equiv.prodSubtypeFstEquivSubtypeProd
        (p := fun I : {I : (Ideal (𝓞 K))⁰ // IsPrincipal I.1 ∧ absNorm I.1 = n} ↦ J.1 ∣ I.1)
    _ ≃ {I : (Ideal (𝓞 K))⁰ // (IsPrincipal I.1 ∧ absNorm I.1 = n) ∧ J.1 ∣ I.1} × (torsion K) :=
      Equiv.prodCongrLeft fun _ ↦ (Equiv.subtypeSubtypeEquivSubtypeInter
        (fun I : (Ideal (𝓞 K))⁰ ↦ IsPrincipal I.1 ∧ absNorm I.1 = n)
        (fun I ↦ J.1 ∣ I.1))
    _ ≃ {I : (Ideal (𝓞 K))⁰ // J.1 ∣ I.1 ∧ IsPrincipal I.1 ∧ absNorm I.1 = n} ×
          (Units.torsion K) :=
      Equiv.prodCongrLeft fun _ ↦ Equiv.subtypeEquivRight fun _ ↦ by rw [and_comm]

/-- For `s : ℝ`, the number of principal nonzero ideals in `𝓞 K` divisible par `J` of norm `≤ s`
multiplied by the order of the torsion of `K` is equal to the number of elements in `idealSet K J`
of norm `≤ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant906499593fe08f3e40015dd7af8ad257fdd4c9ce88ee52cd55fa0d636d1329d7.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9efdbfb803a680bf1c8089737c33a7b147a59d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
