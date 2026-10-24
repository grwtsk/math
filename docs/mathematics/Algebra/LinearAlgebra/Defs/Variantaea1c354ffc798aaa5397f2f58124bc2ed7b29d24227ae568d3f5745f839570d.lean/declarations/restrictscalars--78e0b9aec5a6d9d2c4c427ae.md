# restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e72919fee5e725aa2131c454492ad42637ed44d8ed640fb000ec8d48f9d8c7aa",
  "kind": "def",
  "lexical_name": "restrictScalars",
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
  "slug": "restrictscalars--78e0b9aec5a6d9d2c4c427ae",
  "source": {
    "blob": "5f68ae60b4f22094ae57c9e4ef28be13925e8ef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 418,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78e0b9aec5a6d9d2c4c427aec78a463b8f9bbe1fb457cf1b1e386b3f2d2339db",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e72919fee5e725aa2131c454492ad42637ed44d8ed640fb000ec8d48f9d8c7aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[coe] def restrictScalars (fₗ : M →ₗ[S] M₂) : M →ₗ[R] M₂ where
  toFun := fₗ
  map_add' := fₗ.map_add
  map_smul' := fₗ.map_smul_of_tower

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f68ae60b4f22094ae57c9e4ef28be13925e8ef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
