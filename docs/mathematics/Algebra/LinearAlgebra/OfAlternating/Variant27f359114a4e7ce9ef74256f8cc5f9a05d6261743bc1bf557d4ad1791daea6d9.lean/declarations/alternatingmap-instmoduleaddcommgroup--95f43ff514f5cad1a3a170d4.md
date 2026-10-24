# AlternatingMap.instModuleAddCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5878f97719a819145dc72db7fa28d3fe67395fec82131b7f0c6f51b98fbfe0ab",
  "kind": "instance",
  "lexical_name": "AlternatingMap.instModuleAddCommGroup",
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
  "slug": "alternatingmap-instmoduleaddcommgroup--95f43ff514f5cad1a3a170d4",
  "source": {
    "blob": "5aad0631df420b25f5b8560b5bb72c3a4c824a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95f43ff514f5cad1a3a170d4e9a03c8818d927b1898f60c1d5e8070493cfc91c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5878f97719a819145dc72db7fa28d3fe67395fec82131b7f0c6f51b98fbfe0ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AlternatingMap.instModuleAddCommGroup {ι : Type*} :
    Module R (M [⋀^ι]→ₗ[R] N) := by
  infer_instance

namespace ExteriorAlgebra

open CliffordAlgebra hiding ι

/-- Build a map out of the exterior algebra given a collection of alternating maps acting on each
exterior power -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant27f359114a4e7ce9ef74256f8cc5f9a05d6261743bc1bf557d4ad1791daea6d9.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aad0631df420b25f5b8560b5bb72c3a4c824a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
