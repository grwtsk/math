# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0077ca6bca31484e68afd1e9a4caf86cbb9474183b2968540d9087b857536535",
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
  "slug": "instance--a35a0ec4ba1d2fd2d3f19379",
  "source": {
    "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 353,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a35a0ec4ba1d2fd2d3f19379a4d6cefade08c6b494671c6bf6f4550f3bf2aef2",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0077ca6bca31484e68afd1e9a4caf86cbb9474183b2968540d9087b857536535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (hf : IsImmersionAtOfComplement F I J n f x) : NormedSpace 𝕜 hf.smallComplement :=
  haveI := hf.small
  inferInstanceAs <| NormedSpace 𝕜 (Shrink F)

/-- Given an immersion `f` at `x` w.r.t. a complement `F`, this construction provides
a continuous linear equivalence from `F` to the small complement of `F`:
mathematically, this is just the identity map; however, this is technically useful as it enables
us to always work with `hf.smallComplement`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7789456c476b7e65495bc8ecaecf076cf0d9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
