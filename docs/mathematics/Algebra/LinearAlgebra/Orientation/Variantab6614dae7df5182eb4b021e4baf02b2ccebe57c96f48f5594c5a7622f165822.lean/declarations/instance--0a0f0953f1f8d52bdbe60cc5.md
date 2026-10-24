# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cba0fca937411f330f090e3ed5bbee25de7746fc3e4f5331a7197351bdb82209",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0a0f0953f1f8d52bdbe60cc5",
  "source": {
    "blob": "e0e5c78b39d4efbdedade2068d4266bcaef70d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 197,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variantab6614dae7df5182eb4b021e4baf02b2ccebe57c96f48f5594c5a7622f165822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a0f0953f1f8d52bdbe60cc5fe5270ac7b9ebbaccc250e1914bc562db98ab72e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orientation/Variantab6614dae7df5182eb4b021e4baf02b2ccebe57c96f48f5594c5a7622f165822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cba0fca937411f330f090e3ed5bbee25de7746fc3e4f5331a7197351bdb82209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance (priority := 100) {n : ℕ} [Module.Finite R M] [Module.Free R M]
    [Fact (finrank R M = n)] : Module.Oriented R M (Fin n) :=
  ⟨(finBasisOfFinrankEq _ _ Fact.out).orientation⟩

end Module.Oriented.Arbitrary

end OrderedCommRing

section LinearOrderedCommRing

variable {R : Type*} [CommRing R] [LinearOrder R] [IsStrictOrderedRing R]
variable {M : Type*} [AddCommGroup M] [Module R M]
variable {ι : Type*}

namespace Orientation

set_option backward.isDefEq.respectTransparency false in
/-- A module `M` over a linearly ordered commutative ring has precisely two "orientations" with
respect to an empty index type. (Note that these are only orientations of `M` of in the conventional
mathematical sense if `M` is zero-dimensional.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orientation/Variantab6614dae7df5182eb4b021e4baf02b2ccebe57c96f48f5594c5a7622f165822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orientation/Variantab6614dae7df5182eb4b021e4baf02b2ccebe57c96f48f5594c5a7622f165822.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0e5c78b39d4efbdedade2068d4266bcaef70d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
