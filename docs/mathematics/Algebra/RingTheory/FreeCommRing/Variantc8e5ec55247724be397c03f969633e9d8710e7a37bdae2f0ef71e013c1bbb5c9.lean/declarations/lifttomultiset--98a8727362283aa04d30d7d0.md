# liftToMultiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2b16d035ff3bcf2d5435afefc58f977654d32ed6986a7c781feeba6ac0a7b36",
  "kind": "def",
  "lexical_name": "liftToMultiset",
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
  "slug": "lifttomultiset--98a8727362283aa04d30d7d0",
  "source": {
    "blob": "6b75cf295b5a330ae88b1721919fb6c5a419a9ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 136,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variantc8e5ec55247724be397c03f969633e9d8710e7a37bdae2f0ef71e013c1bbb5c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98a8727362283aa04d30d7d0ddde196450b1519c1b9eec0bac92fe104001e764",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Variantc8e5ec55247724be397c03f969633e9d8710e7a37bdae2f0ef71e013c1bbb5c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2b16d035ff3bcf2d5435afefc58f977654d32ed6986a7c781feeba6ac0a7b36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def liftToMultiset : (α → R) ≃ (Multiplicative (Multiset α) →* R) where
  toFun f :=
    { toFun := fun s => (s.toAdd.map f).prod
      map_mul' := fun x y =>
        calc
          _ = Multiset.prod (Multiset.map f x + Multiset.map f y) := by
            rw [← Multiset.map_add]
            rfl
          _ = _ := Multiset.prod_add _ _
      map_one' := rfl }
  invFun F x := F (Multiplicative.ofAdd ({x} : Multiset α))
  left_inv f := funext fun x => show (Multiset.map f {x}).prod = _ by simp
  right_inv F := MonoidHom.ext fun x =>
    let F' := F.toAdditiveRight
    let x' := x.toAdd
    show (Multiset.map (fun a => F' {a}) x').sum = F' x' by
      rw [← Function.comp_def (fun x => F' x) (fun x => {x}), ← Multiset.map_map,
        ← AddMonoidHom.map_multiset_sum]
      exact DFunLike.congr_arg F (Multiset.sum_map_singleton x')

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- Lift a map `α → R` to an additive group homomorphism `FreeCommRing α → R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Variantc8e5ec55247724be397c03f969633e9d8710e7a37bdae2f0ef71e013c1bbb5c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Variantc8e5ec55247724be397c03f969633e9d8710e7a37bdae2f0ef71e013c1bbb5c9.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b75cf295b5a330ae88b1721919fb6c5a419a9ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
