# BaseCaseLFunctionData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a33d1a542b3967e660f946054aa1afd26bae9f493b69e57abc93fc7dfe56ffed",
  "kind": "structure",
  "lexical_name": "BaseCaseLFunctionData",
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
  "slug": "basecaselfunctiondata--0f477704fb44c62de6ed9f16",
  "source": {
    "blob": "d3044fa729f06b6724cd670a11df19dec1d85f09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseLFunction/Variante0ba4841bc5dfe1518e506e3cd8e4e13556f0b38e544c2ec3a7dedc819395180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f477704fb44c62de6ed9f1698b4020c1616e0b6dddc0386a7aa9a6b3a2cf7e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseLFunction/Variante0ba4841bc5dfe1518e506e3cd8e4e13556f0b38e544c2ec3a7dedc819395180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a33d1a542b3967e660f946054aa1afd26bae9f493b69e57abc93fc7dfe56ffed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BaseCaseLFunctionData where
  CurveData : Type _
  LFunctionData : Type _
  arithmeticSourceLabel : String
  rawCriticalCenter : ℝ
  normalizedCriticalCenter : ℝ
  center_eq_spectralPivot :
    normalizedCriticalCenter = Core.spectralPivot
  centralValueNonzero : Prop
  centralValueNonzero_certified : centralValueNonzero
  analyticContinuation? : Prop
  functionalEquation? : Prop
  externalWitness : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseLFunction/Variante0ba4841bc5dfe1518e506e3cd8e4e13556f0b38e544c2ec3a7dedc819395180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseLFunction/Variante0ba4841bc5dfe1518e506e3cd8e4e13556f0b38e544c2ec3a7dedc819395180.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3044fa729f06b6724cd670a11df19dec1d85f09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
