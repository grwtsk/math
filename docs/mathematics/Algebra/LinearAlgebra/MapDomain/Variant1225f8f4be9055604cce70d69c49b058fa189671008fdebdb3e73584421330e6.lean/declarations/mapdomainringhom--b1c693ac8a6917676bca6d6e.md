# mapDomainRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ee3e5de380a52e708ee71d1e8672854f74d01b69d08cdd38a61b051b5c64ce4",
  "kind": "def",
  "lexical_name": "mapDomainRingHom",
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
  "slug": "mapdomainringhom--b1c693ac8a6917676bca6d6e",
  "source": {
    "blob": "6e853f214a8e7b25bc85da4c43ba4881a25cd32f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1c693ac8a6917676bca6d6ea8af486d31c067504fb59d57e9c255c494da5640",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ee3e5de380a52e708ee71d1e8672854f74d01b69d08cdd38a61b051b5c64ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapDomainRingHom (k : Type*) [Semiring k] {H F : Type*} [AddMonoid G] [AddMonoid H]
    [FunLike F G H] [AddMonoidHomClass F G H] (f : F) : k[G] →+* k[H] :=
  { (Finsupp.mapDomain.addMonoidHom f : MonoidAlgebra k G →+ MonoidAlgebra k H) with
    map_one' := mapDomain_one f
    map_mul' := fun x y => mapDomain_mul f x y }

end MiscTheorems

end AddMonoidAlgebra

/-!
#### Conversions between `AddMonoidAlgebra` and `MonoidAlgebra`

We have not defined `k[G] = MonoidAlgebra k (Multiplicative G)`
because historically this caused problems;
since the changes that have made `nsmul` definitional, this would be possible,
but for now we just construct the ring isomorphisms using `RingEquiv.refl _`.
-/

variable (k G) in
/-- The equivalence between `AddMonoidAlgebra` and `MonoidAlgebra` in terms of
`Multiplicative` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MapDomain/Variant1225f8f4be9055604cce70d69c49b058fa189671008fdebdb3e73584421330e6.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e853f214a8e7b25bc85da4c43ba4881a25cd32f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
