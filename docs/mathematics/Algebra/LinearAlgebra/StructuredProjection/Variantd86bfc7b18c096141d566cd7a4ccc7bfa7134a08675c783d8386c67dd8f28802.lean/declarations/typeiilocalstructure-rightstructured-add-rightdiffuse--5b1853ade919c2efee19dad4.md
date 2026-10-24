# TypeIILocalStructure.rightStructured_add_rightDiffuse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32cd278d-182a-1412-ae31-6182f89340fd",
  "kind": "theorem",
  "lexical_name": "TypeIILocalStructure.rightStructured_add_rightDiffuse",
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
  "slug": "typeiilocalstructure-rightstructured-add-rightdiffuse--5b1853ade919c2efee19dad4",
  "source": {
    "blob": "cc97faeb170400adfe8bf4df2b403e4523fc983f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b1853ade919c2efee19dad4aa347555dc42f5c592b3d907dc8d4dc1f26d01c7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32cd278d-182a-1412-ae31-6182f89340fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TypeIILocalStructure.rightStructured_add_rightDiffuse
    {Left Right : Type*} [Fintype Left] [Fintype Right] {rankBudget : ℕ}
    (localData : TypeIILocalStructure Left Right rankBudget)
    (vector : EuclideanSpace ℂ Right) :
    localData.rightStructured vector + localData.rightDiffuse vector = vector := by
  simp [TypeIILocalStructure.rightDiffuse]

/-- Exact four-term expansion of a bilinear Type II pairing.

This is bookkeeping only.  In the intended analysis the diffuse/diffuse,
mixed, and structured/structured summands require different theorems.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StructuredProjection/Variantd86bfc7b18c096141d566cd7a4ccc7bfa7134a08675c783d8386c67dd8f28802.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc97faeb170400adfe8bf4df2b403e4523fc983f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
