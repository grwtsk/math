# const_mul_rev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66ff6bd2-9bf3-6a23-b2d5-d4534f73ab33",
  "kind": "theorem",
  "lexical_name": "const_mul_rev",
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
  "slug": "const-mul-rev--e998efc19bac68632f3e1c7d",
  "source": {
    "blob": "77c38c8ba20bb8be112e47215887715d2f05b8a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 401,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e998efc19bac68632f3e1c7dd8cac99ac31e50abbe939668daa07cbd3b902995",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66ff6bd2-9bf3-6a23-b2d5-d4534f73ab33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem const_mul_rev (f g : R) (U hu₁ hu₂) : const R f g U hu₁ * const R g f U hu₂ = 1 := by
  rw [const_mul, const_congr R rfl (mul_comm g f), const_self]
#align algebraic_geometry.structure_sheaf.const_mul_rev AlgebraicGeometry.StructureSheaf.const_mul_rev

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c38c8ba20bb8be112e47215887715d2f05b8a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
