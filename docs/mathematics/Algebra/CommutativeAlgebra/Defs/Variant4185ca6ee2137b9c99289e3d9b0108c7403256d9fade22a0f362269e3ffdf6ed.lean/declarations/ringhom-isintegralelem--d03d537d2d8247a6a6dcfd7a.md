# RingHom.IsIntegralElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b05f0978198e9d9559d93fad0ecd9aa6bce17570e18790fec93822f3541f1894",
  "kind": "def",
  "lexical_name": "RingHom.IsIntegralElem",
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
  "slug": "ringhom-isintegralelem--d03d537d2d8247a6a6dcfd7a",
  "source": {
    "blob": "eae0e386ac19dea1bb75d729a18d9701633a7453",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant4185ca6ee2137b9c99289e3d9b0108c7403256d9fade22a0f362269e3ffdf6ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d03d537d2d8247a6a6dcfd7a065ef5fbcaca7950983a8befc4332ba4196352b1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variant4185ca6ee2137b9c99289e3d9b0108c7403256d9fade22a0f362269e3ffdf6ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b05f0978198e9d9559d93fad0ecd9aa6bce17570e18790fec93822f3541f1894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RingHom.IsIntegralElem (f : R →+* A) (x : A) :=
  ∃ p : R[X], Monic p ∧ eval₂ f x p = 0

/-- A ring homomorphism `f : R →+* A` is said to be integral
if every element `A` is integral with respect to the map `f` -/
@[algebraize Algebra.IsIntegral.mk, stacks 00GI "(2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variant4185ca6ee2137b9c99289e3d9b0108c7403256d9fade22a0f362269e3ffdf6ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant4185ca6ee2137b9c99289e3d9b0108c7403256d9fade22a0f362269e3ffdf6ed.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae0e386ac19dea1bb75d729a18d9701633a7453` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
