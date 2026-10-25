# singular_small_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3054c401-696d-2c2b-5901-b2880ad018ed",
  "kind": "theorem",
  "lexical_name": "singular_small_decomposition",
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
  "slug": "singular-small-decomposition--5313f65b8e0c888b6b0de758",
  "source": {
    "blob": "b39c3fa4672ebf664ef9fb21b969a1ade4ff87ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5313f65b8e0c888b6b0de75801cccdcb51b84736997c16fca6e997cb7dcacdc7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3054c401-696d-2c2b-5901-b2880ad018ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singular_small_decomposition (A : Set X) (μ : Cardinal.{u})
    (hμ : μ.IsSingular) (hA : #A ≤ μ) :
    ∃ (J : Type u) (B : J → Set X), #J = μ.ord.cof ∧
      (∀ j, #(B j) < μ) ∧ A = ⋃ j, B j := by
  classical
  let β := μ.ord.ToType
  obtain ⟨e⟩ : Nonempty (A ↪ β) := (Cardinal.le_def _ _).mp
    (hA.trans_eq (Cardinal.mk_ord_toType μ).symm)
  have hnomax : NoMaxOrder β := by
    apply Ordinal.isSuccPrelimit_type_lt_iff.mp
    change Order.IsSuccPrelimit (Ordinal.type (fun x y : μ.ord.ToType ↦ x < y))
    rw [Ordinal.type_toType]
    exact (Cardinal.isSuccLimit_ord hμ.aleph0_le).isSuccPrelimit
  let := hnomax
  obtain ⟨S, hcofinal, hS⟩ := Order.exists_cof_eq β
  let B : S → Set X := fun j ↦ Subtype.val '' {a : A | e a < j.val}
  refine ⟨S, B, hS.trans (Ordinal.cof_toType μ.ord), ?_, ?_⟩
  · intro j
    have hsegment : #(Iio j.val) < μ := by
      simpa only [Cardinal.mk_ord_toType] using
        Cardinal.mk_Iio_lt (α := μ.ord.ToType) j.val
          (by rw [Cardinal.mk_ord_toType, Ordinal.type_toType])
    let f : {a : A // e a < j.val} → Iio j.val := fun a ↦ ⟨e a.val, a.property⟩
    have hf : Function.Injective f := by
      intro a b hab
      apply Subtype.ext
      exact e.injective (congrArg Subtype.val hab)
    exact (Cardinal.mk_image_le.trans (Cardinal.mk_le_of_injective hf)).trans_lt hsegment
  · ext x
    constructor
    · intro hx
      have hxunion : e ⟨x, hx⟩ ∈ ⋃ j ∈ S, Iio j := by
        rw [isCofinal_iff_iUnion_Iio_eq_univ.mp hcofinal]
        trivial
      obtain ⟨j, hj⟩ := mem_iUnion.mp hxunion
      obtain ⟨hjS, hxj⟩ := mem_iUnion.mp hj
      exact mem_iUnion.mpr ⟨⟨j, hjS⟩, ⟨⟨x, hx⟩, hxj, rfl⟩⟩
    · intro hx
      obtain ⟨j, a, _, rfl⟩ := mem_iUnion.mp hx
      exact a.property

/-- Enlarged threshold depends on the original threshold and `μ`, not on the
particular target reconstructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39c3fa4672ebf664ef9fb21b969a1ade4ff87ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
