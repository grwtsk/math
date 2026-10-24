# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44f5c55564ae01ed81f3ee089ae8318a781c09a92766d3ac3d4dcf6bde669329",
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
  "slug": "instance--48c05eb5fb070c81a452da42",
  "source": {
    "blob": "6d8cc86e9db4c9c89cbda7c81345c49904857ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 58,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48c05eb5fb070c81a452da4259a9bf3a6e561a062e068ae4cdcccfda69c088e4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44f5c55564ae01ed81f3ee089ae8318a781c09a92766d3ac3d4dcf6bde669329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (x : ℝ) : One (TangentSpace 𝓘(ℝ) x) where
  one := (1 : ℝ)

/-- Unit vector in the tangent space to a segment, as the image of the unit vector in the real line
under the canonical projection. It is also mapped to the unit vector in the real line through
the canonical injection, see `mfderiv_subtypeVal_Icc_one`.

Note that one cannot abuse defeqs for this definition: this is *not* the same as the vector
`fun _ ↦ 1` in `EuclideanSpace ℝ (Fin 1)` through defeqs, as one of the charts of `Icc x y` is
orientation-reversing. -/
irreducible_def oneTangentSpaceIcc {x y : ℝ} [h : Fact (x < y)] (z : Icc x y) :
    TangentSpace (𝓡∂ 1) z :=
  mfderiv[Icc x y] (Set.projIcc x y h.out.le) z 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8cc86e9db4c9c89cbda7c81345c49904857ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
