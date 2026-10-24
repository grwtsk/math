# isUnit_iff_forall_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71ca36ab-3b5c-9549-f02d-37dfd120b3bb",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_forall_isUnit",
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
  "slug": "isunit-iff-forall-isunit--40eae73bb9a79167abd691d3",
  "source": {
    "blob": "49bf76d2933f66199b49c6b2ace6278eb3f4481a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 354,
    "path": "GRWTSK/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40eae73bb9a79167abd691d3159e1ac72c3ca296b8c855ae3b1237d3bfadf510",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71ca36ab-3b5c-9549-f02d-37dfd120b3bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_forall_isUnit (hc : IsLimit c) (r : c.pt) : IsUnit r ↔
    ∀ (j : J), IsUnit (c.π.app j r) := by
  refine ⟨fun h _ ↦ h.map _, fun h ↦ ?_⟩
  simp only [isUnit_iff_exists_inv] at h ⊢
  choose inv h_inv using h
  have map_inv {j k : J} (f : j ⟶ k) : F.map f (inv j) = inv k := by
    have h := congr(F.map f $(h_inv j))
    have : F.map f (c.π.app j r) = c.π.app k r :=
      DFunLike.congr_fun (congr(Hom.hom $(c.w f))) r
    rw [map_mul, map_one, this] at h
    rw [← mul_one (F.map f (inv j)), ← h_inv k, ← mul_assoc]
    nth_rw 2 [mul_comm]; rw [h, one_mul]
  let inv_r : Cone F := .mk ↧(FreeCommRing PUnit) {
    app j := ConcreteCategory.ofHom (FreeCommRing.lift (fun _ ↦ inv j))
    naturality j k f := by
      ext1; change FreeCommRing.lift (fun _ => inv k) = _
      ext; simp [map_inv f] }
  use hc.lift inv_r (FreeCommRing.of PUnit.unit)
  refine Concrete.isLimit_ext _ hc _ _ fun j ↦ ?_
  rw [RingHom.map_mul, RingHom.map_one]; convert h_inv j
  change (hc.lift inv_r ≫ c.π.app j) (FreeCommRing.of PUnit.unit) = inv j
  rw [IsLimit.fac]; exact FreeCommRing.lift_of ..

-- The assumption `hj` can be generalized to a zigzag-like assumption of finite steps.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49bf76d2933f66199b49c6b2ace6278eb3f4481a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
