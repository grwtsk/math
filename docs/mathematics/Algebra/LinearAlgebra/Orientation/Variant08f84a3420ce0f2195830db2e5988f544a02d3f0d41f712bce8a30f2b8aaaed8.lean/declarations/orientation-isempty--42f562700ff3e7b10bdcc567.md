# orientation_isEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:152d9daf-3e96-cd83-69b9-6561e4ef411d",
  "kind": "theorem",
  "lexical_name": "orientation_isEmpty",
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
  "slug": "orientation-isempty--42f562700ff3e7b10bdcc567",
  "source": {
    "blob": "d802c328bf3e573c6b95e9398610defa7752c659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42f562700ff3e7b10bdcc567e0bc7124c420c76cce8d9dee109a06883b5666fa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:152d9daf-3e96-cd83-69b9-6561e4ef411d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orientation_isEmpty [IsEmpty ι] (b : Basis ι R M) :
    b.orientation = positiveOrientation := by
  rw [Basis.orientation]
  congr
  exact b.det_isEmpty

end Basis

end OrderedCommRing

section LinearOrderedCommRing

variable {R : Type*} [CommRing R] [LinearOrder R] [IsStrictOrderedRing R]
variable {M : Type*} [AddCommGroup M] [Module R M]
variable {ι : Type*}

namespace Orientation

/-- A module `M` over a linearly ordered commutative ring has precisely two "orientations" with
respect to an empty index type. (Note that these are only orientations of `M` of in the conventional
mathematical sense if `M` is zero-dimensional.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orientation/Variant08f84a3420ce0f2195830db2e5988f544a02d3f0d41f712bce8a30f2b8aaaed8.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d802c328bf3e573c6b95e9398610defa7752c659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
