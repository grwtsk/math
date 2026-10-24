# Real.measureSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e5d062982a6d8a171cb010b531454d704b0f751ccb0b32c8449d43089095eea",
  "kind": "instance",
  "lexical_name": "Real.measureSpace",
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
  "slug": "real-measurespace--ffbc2f74404a61e5e4cc0c0b",
  "source": {
    "blob": "88065f83c0f02742394220b65e548b1d7143a3f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 311,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffbc2f74404a61e5e4cc0c0bdbb563fb51c6cea1526ca14d6610d321287f1741",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e5d062982a6d8a171cb010b531454d704b0f751ccb0b32c8449d43089095eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Real.measureSpace : MeasureSpace ℝ := by infer_instance

/-! # Miscellaneous instances for `EuclideanSpace`

In combination with `measureSpaceOfInnerProductSpace`, these put a `MeasureSpace` structure
on `EuclideanSpace`. -/


namespace EuclideanSpace

variable (ι)

-- TODO: do we want these instances for `PiLp` too?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88065f83c0f02742394220b65e548b1d7143a3f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
