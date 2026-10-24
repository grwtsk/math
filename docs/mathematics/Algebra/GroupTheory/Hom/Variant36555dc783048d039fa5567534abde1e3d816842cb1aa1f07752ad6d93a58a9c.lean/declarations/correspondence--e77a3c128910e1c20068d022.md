# correspondence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d13ddd4c8ae1e0ddb44e786ed1a25564939145805bdb210ea713486d62248e0",
  "kind": "def",
  "lexical_name": "correspondence",
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
  "slug": "correspondence--e77a3c128910e1c20068d022",
  "source": {
    "blob": "36dd7a5d4d2c4801709470a0687db88ae4e00257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 117,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant36555dc783048d039fa5567534abde1e3d816842cb1aa1f07752ad6d93a58a9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e77a3c128910e1c20068d022786e2bd111da0b99959b3570734787923128c6d3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant36555dc783048d039fa5567534abde1e3d816842cb1aa1f07752ad6d93a58a9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d13ddd4c8ae1e0ddb44e786ed1a25564939145805bdb210ea713486d62248e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def correspondence {c : Con M} : { d // c ≤ d } ≃o Con c.Quotient where
  toFun d :=
    d.1.mapOfSurjective (mkMulHom c) (by rw [Con.ker_mkMulHom_eq]; exact d.2) <|
      Quotient.mk_surjective
  invFun d :=
    ⟨comap ((↑) : M → c.Quotient) (fun _ _ => rfl) d, fun x y h =>
      show d x y by rw [c.eq.2 h]; exact d.refl _⟩
  left_inv d :=
    Subtype.ext_iff.2 <|
      ext fun x y =>
        ⟨fun ⟨a, b, H, hx, hy⟩ =>
          d.1.trans (d.1.symm <| d.2 <| c.eq.1 hx) <| d.1.trans H <| d.2 <| c.eq.1 hy,
          fun h => ⟨_, _, h, rfl, rfl⟩⟩
  right_inv d :=
    Con.ext fun x y ↦ by
      refine ⟨?_, Con.induction_on₂ x y fun w z h => ⟨w, z, h, rfl, rfl⟩⟩
      rintro ⟨a, b, H, rfl, rfl⟩
      exact H
  map_rel_iff' {s t} := by
    constructor
    · intro h x y hs
      rcases h ⟨x, y, hs, rfl, rfl⟩ with ⟨a, b, ht, hx, hy⟩
      exact t.1.trans (t.1.symm <| t.2 <| c.eq.1 hx) (t.1.trans ht (t.2 <| c.eq.1 hy))
    · exact Relation.map_mono

end Mul

section MulOneClass

variable [MulOneClass M] [MulOneClass N] [MulOneClass P] {c : Con M}

variable (c)

/-- The natural homomorphism from a monoid to its quotient by a congruence relation. -/
@[to_additive /-- The natural homomorphism from an `AddMonoid` to its quotient by an additive
congruence relation. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant36555dc783048d039fa5567534abde1e3d816842cb1aa1f07752ad6d93a58a9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant36555dc783048d039fa5567534abde1e3d816842cb1aa1f07752ad6d93a58a9c.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36dd7a5d4d2c4801709470a0687db88ae4e00257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
