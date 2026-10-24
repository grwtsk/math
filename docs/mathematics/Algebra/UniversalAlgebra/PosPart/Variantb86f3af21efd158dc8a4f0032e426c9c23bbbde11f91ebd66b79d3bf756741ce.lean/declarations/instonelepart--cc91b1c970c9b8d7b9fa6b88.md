# instOneLePart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05ea895dc64c1d8dce9f42f77ecc385458bfd26956ecd9f9c11a78308200e014",
  "kind": "instance",
  "lexical_name": "instOneLePart",
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
  "slug": "instonelepart--cc91b1c970c9b8d7b9fa6b88",
  "source": {
    "blob": "b79ca12e90574069c016172df524b23709e327cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 51,
    "path": "GRWTSK/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc91b1c970c9b8d7b9fa6b88c765d3fef5d6b4989c9d7412462fc07d4a831adb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05ea895dc64c1d8dce9f42f77ecc385458bfd26956ecd9f9c11a78308200e014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instOneLePart : OneLePart α where
  oneLePart a := a ⊔ 1

/-- The *negative part* of an element `a` in a lattice ordered group is `a⁻¹ ⊔ 1`, denoted `a⁻ᵐ `.
-/
@[to_additive
"The *negative part* of an element `a` in a lattice ordered group is `(-a) ⊔ 0`, denoted `a⁻`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/PosPart/Variantb86f3af21efd158dc8a4f0032e426c9c23bbbde11f91ebd66b79d3bf756741ce.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b79ca12e90574069c016172df524b23709e327cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
