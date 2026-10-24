# IsLocalization.height_under_eq_of_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00d50fa4-ffff-a941-8e8f-09bdcb2f1319",
  "kind": "theorem",
  "lexical_name": "IsLocalization.height_under_eq_of_isPrime",
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
  "slug": "islocalization-height-under-eq-of-isprime--c03d0a2f148cbbabcca43627",
  "source": {
    "blob": "77c8b8ec335772e7f87acc498acec2e9171eb0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 408,
    "path": "GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c03d0a2f148cbbabcca43627ebbd9df7f90d2ab3de74d65138b4e5092329e8b1",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00d50fa4-ffff-a941-8e8f-09bdcb2f1319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem IsLocalization.height_under_eq_of_isPrime (S : Submonoid R) {A : Type*} [CommRing A]
    [Algebra R A] [IsLocalization S A] (J : Ideal A) [J.IsPrime] :
    (J.comap (algebraMap R A)).height = J.height := by
  rw [eq_comm, Ideal.height_eq_primeHeight, Ideal.height_eq_primeHeight, Ideal.primeHeight,
    Ideal.primeHeight, ← WithBot.coe_inj, Order.height_eq_krullDim_Iic,
    Order.height_eq_krullDim_Iic]
  let e := IsLocalization.orderIsoOfPrime S A
  have H (p : Ideal R) (hp : p ≤ J.comap (algebraMap R A)) : Disjoint (S : Set R) p :=
    Set.disjoint_of_subset_right hp (e ⟨_, ‹J.IsPrime›⟩).2.2
  exact Order.krullDim_eq_of_orderIso
    { toFun I := ⟨⟨I.1.1.comap (algebraMap R A), (e ⟨_, I.1.2⟩).2.1⟩, Ideal.comap_mono I.2⟩
      invFun I := ⟨⟨_, (e.symm ⟨_, I.1.2, H _ I.2⟩).2⟩, Ideal.map_le_iff_le_comap.mpr I.2⟩
      left_inv I := Subtype.ext <| PrimeSpectrum.ext_iff.mpr <|
        congrArg (fun I ↦ I.1) (e.left_inv ⟨_, I.1.2⟩)
      right_inv I := Subtype.ext <| PrimeSpectrum.ext_iff.mpr <|
        congrArg (fun I ↦ I.1) (e.right_inv ⟨_, I.1.2, H _ I.2⟩)
      map_rel_iff' {I₁ I₂} := @RelIso.map_rel_iff _ _ _ _ e ⟨_, I₁.1.2⟩ ⟨_, I₂.1.2⟩ }

@[deprecated "Use `Ideal.height_ne_top_of_isPrime` instead." (since := "2026-04-04")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c8b8ec335772e7f87acc498acec2e9171eb0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
