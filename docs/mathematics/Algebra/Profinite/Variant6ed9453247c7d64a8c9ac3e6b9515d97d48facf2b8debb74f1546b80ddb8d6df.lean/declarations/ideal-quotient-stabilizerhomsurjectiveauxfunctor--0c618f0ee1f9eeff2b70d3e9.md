# Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c5457453dbeadc67ec57a6e24555cf5d798f5d2f5f2fa481e6d51335679dffa",
  "kind": "def",
  "lexical_name": "Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor",
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
  "slug": "ideal-quotient-stabilizerhomsurjectiveauxfunctor--0c618f0ee1f9eeff2b70d3e9",
  "source": {
    "blob": "2a16d714bbccb28eda032a355518d8853069d2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 121,
    "path": "GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c618f0ee1f9eeff2b70d3e95f6f134dcb1078c5ee19dcafe987bc937b707814",
  "verification": {
    "reference": "docs/verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c5457453dbeadc67ec57a6e24555cf5d798f5d2f5f2fa481e6d51335679dffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor
    (P : Ideal A) (Q : Ideal B) [Q.LiesOver P] (σ : (B ⧸ Q) ≃ₐ[A ⧸ P] B ⧸ Q) :
    OpenNormalSubgroup G ⥤ Type _ where
  obj N :=
    letI B' := FixedPoints.subalgebra A B N.1.1
    letI f : (B' ⧸ Q.under B') →ₐ[A ⧸ P] B ⧸ Q :=
    { toRingHom := Ideal.quotientMap _ B'.subtype le_rfl,
      commutes' := Quotient.ind fun _ ↦ rfl }
    { σ' // f.comp (Ideal.Quotient.stabilizerHom
      (Q.under B') P (G ⧸ N.1.1) σ') = σ.toAlgHom.comp f }
  map {N N'} i x := ⟨⟨(QuotientGroup.map _ _ (.id _) (leOfHom i)) x.1,
    Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor_aux Q i.le x.1.1 x.1.2⟩, by
    have h : FixedPoints.subalgebra A B N'.1.1 ≤ FixedPoints.subalgebra A B N.1.1 :=
      fun x hx n ↦ hx ⟨_, i.le n.2⟩
    obtain ⟨⟨x, hx⟩, hx'⟩ := x
    obtain ⟨x, rfl⟩ := QuotientGroup.mk_surjective x
    ext g
    obtain ⟨g, rfl⟩ := Ideal.Quotient.mk_surjective g
    exact DFunLike.congr_fun hx' (Ideal.Quotient.mk _ (Subalgebra.inclusion h g))⟩
  map_id N := by ext ⟨⟨⟨x⟩, hx⟩, hx'⟩; rfl
  map_comp f g := by ext ⟨⟨⟨x⟩, hx⟩, hx'⟩; rfl

open Ideal.Quotient in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a16d714bbccb28eda032a355518d8853069d2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
