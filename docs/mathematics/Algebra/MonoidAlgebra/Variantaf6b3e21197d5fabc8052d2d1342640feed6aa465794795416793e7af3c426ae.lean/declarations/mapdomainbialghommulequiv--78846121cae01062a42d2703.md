# mapDomainBialgHomMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44e74b08f2bddcff799260cb448f38aabafe98ed8449695981a198d75ee69539",
  "kind": "def",
  "lexical_name": "mapDomainBialgHomMulEquiv",
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
  "slug": "mapdomainbialghommulequiv--78846121cae01062a42d2703",
  "source": {
    "blob": "9768d1bb74c602c76bba0c123336a06e54408c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 345,
    "path": "GRWTSK/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78846121cae01062a42d2703641f55b6acb4992fa1d65115eed203a1fc843874",
  "verification": {
    "reference": "docs/verification/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44e74b08f2bddcff799260cb448f38aabafe98ed8449695981a198d75ee69539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapDomainBialgHomMulEquiv : (G →* H) ≃* WithConv (R[G] →ₐc[R] R[H]) where
  toEquiv := mapDomainBialgHomEquiv.trans (WithConv.equiv _).symm
  map_mul' f g := by simp

end CommGroup
end CommRing
end MonoidAlgebra

namespace AddMonoidAlgebra
section CommSemiring
variable [CommSemiring R] [CommSemiring S]

section Semiring
variable [Semiring A] [Semiring B] [Bialgebra R A] [Bialgebra R B] [AddMonoid M] [AddMonoid N]

/-- See note [partially-applied ext lemmas]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MonoidAlgebra/Variantaf6b3e21197d5fabc8052d2d1342640feed6aa465794795416793e7af3c426ae.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9768d1bb74c602c76bba0c123336a06e54408c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
