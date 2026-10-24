# equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c708d967fc86d5b05edbbfcb5692366a2d3139d65ce674c4d0e8eed3ef2ef75b",
  "kind": "def",
  "lexical_name": "equiv",
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
  "slug": "equiv--496dcd1b3b01427f5a2ed1cb",
  "source": {
    "blob": "d05c2dddcddcc926e98a56952b70c6dbbde87a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 424,
    "path": "GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:496dcd1b3b01427f5a2ed1cbc925593060eef6f27bd029b777b3c0a6737982fc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c708d967fc86d5b05edbbfcb5692366a2d3139d65ce674c4d0e8eed3ef2ef75b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equiv : L ≃ₐ[R] M :=
  -- Porting note: added to replace local instance above
  haveI : IsAlgClosed M := IsAlgClosure.alg_closed R
  let f : L →ₐ[R] M := IsAlgClosed.lift IsAlgClosure.algebraic
  AlgEquiv.ofBijective f
    ⟨RingHom.injective f.toRingHom, by
      letI : Algebra L M := RingHom.toAlgebra f
      letI : IsScalarTower R L M := IsScalarTower.of_algebraMap_eq <| by
        simp only [RingHom.algebraMap_toAlgebra, RingHom.coe_coe, AlgHom.commutes, forall_const]
      letI : IsAlgClosed L := IsAlgClosure.alg_closed R
      show Function.Surjective (algebraMap L M)
      exact
        IsAlgClosed.algebraMap_surjective_of_isAlgebraic
          (Algebra.isAlgebraic_of_larger_base_of_injective
            (NoZeroSMulDivisors.algebraMap_injective R _) IsAlgClosure.algebraic)⟩
#align is_alg_closure.equiv IsAlgClosure.equiv

end

variable (K : Type*) (J : Type*) (R : Type u) (S : Type*) (L : Type v) (M : Type w)
  [Field K] [Field J] [CommRing R] [CommRing S] [Field L] [Field M]
  [Algebra R M] [NoZeroSMulDivisors R M] [IsAlgClosure R M] [Algebra K M] [IsAlgClosure K M]
  [Algebra S L] [NoZeroSMulDivisors S L] [IsAlgClosure S L]

section EquivOfAlgebraic

variable [Algebra R S] [Algebra R L] [IsScalarTower R S L]
variable [Algebra K J] [Algebra J L] [IsAlgClosure J L] [Algebra K L] [IsScalarTower K J L]

/-- If `J` is an algebraic extension of `K` and `L` is an algebraic closure of `J`, then it is
  also an algebraic closure of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d05c2dddcddcc926e98a56952b70c6dbbde87a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
