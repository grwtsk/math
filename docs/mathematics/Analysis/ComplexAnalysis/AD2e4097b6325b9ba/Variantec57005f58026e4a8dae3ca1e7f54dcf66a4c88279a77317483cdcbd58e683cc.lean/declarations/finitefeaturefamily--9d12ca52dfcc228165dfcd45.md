# FiniteFeatureFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a024ba505bb529bad8f26dae37b8ac28577fa7dabc40676ddd8ac31e153d29a7",
  "kind": "structure",
  "lexical_name": "FiniteFeatureFamily",
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
  "slug": "finitefeaturefamily--9d12ca52dfcc228165dfcd45",
  "source": {
    "blob": "20bb7a7ef6e51158720250ab41f50fece85fe80b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 18,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AD2e4097b6325b9ba/Variantec57005f58026e4a8dae3ca1e7f54dcf66a4c88279a77317483cdcbd58e683cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d12ca52dfcc228165dfcd45ad8a7a7c3ca7e3accd3b5eeb5bc1fb4bb7b6f9c8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AD2e4097b6325b9ba/Variantec57005f58026e4a8dae3ca1e7f54dcf66a4c88279a77317483cdcbd58e683cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a024ba505bb529bad8f26dae37b8ac28577fa7dabc40676ddd8ac31e153d29a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteFeatureFamily (Index : Type u) where
  dimension : Nat
  value : Index → Fin dimension → ℂ

end Mathematics.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AD2e4097b6325b9ba/Variantec57005f58026e4a8dae3ca1e7f54dcf66a4c88279a77317483cdcbd58e683cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AD2e4097b6325b9ba/Variantec57005f58026e4a8dae3ca1e7f54dcf66a4c88279a77317483cdcbd58e683cc.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20bb7a7ef6e51158720250ab41f50fece85fe80b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
