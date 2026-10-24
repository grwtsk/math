# Orthonormal.comp_linearIsometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49479ecc-6ab5-19dd-1f77-d5b462cc46f1",
  "kind": "theorem",
  "lexical_name": "Orthonormal.comp_linearIsometry",
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
  "slug": "orthonormal-comp-linearisometry--5cd90e5dec9a3ec7ac1f2087",
  "source": {
    "blob": "4c22139138eb648768f026facb5298a12688bf38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 323,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cd90e5dec9a3ec7ac1f20872df62101f1bf60fe56804deac8b309c04994c323",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49479ecc-6ab5-19dd-1f77-d5b462cc46f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Orthonormal.comp_linearIsometry {v : ι → E} (hv : Orthonormal 𝕜 v) (f : E →ₗᵢ[𝕜] E') :
    Orthonormal 𝕜 (f ∘ v) := by rwa [f.orthonormal_comp_iff]

/-- A linear isometric equivalence preserves the property of being orthonormal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c22139138eb648768f026facb5298a12688bf38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
