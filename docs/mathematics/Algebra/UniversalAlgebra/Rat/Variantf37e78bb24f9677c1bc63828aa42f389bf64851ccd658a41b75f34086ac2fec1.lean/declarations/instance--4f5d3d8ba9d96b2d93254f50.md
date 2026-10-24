# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ac1a9dbd220a58c178f8e6f502bb47f7df3525d0f2d490cfd3ffedb932ed174",
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
  "slug": "instance--4f5d3d8ba9d96b2d93254f50",
  "source": {
    "blob": "69d70c5d4a273db2d238df5fc14e9af7c426b017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 30,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f5d3d8ba9d96b2d93254f5004978968516f81684d398e941bc9612d462e03f0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ac1a9dbd220a58c178f8e6f502bb47f7df3525d0f2d490cfd3ffedb932ed174`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) instDistribSMul : DistribSMul ℚ≥0 R where
  smul_zero a := by rw [smul_def, mul_zero]
  smul_add a x y := by rw [smul_def, smul_def, smul_def, mul_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Rat/Variantf37e78bb24f9677c1bc63828aa42f389bf64851ccd658a41b75f34086ac2fec1.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69d70c5d4a273db2d238df5fc14e9af7c426b017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
