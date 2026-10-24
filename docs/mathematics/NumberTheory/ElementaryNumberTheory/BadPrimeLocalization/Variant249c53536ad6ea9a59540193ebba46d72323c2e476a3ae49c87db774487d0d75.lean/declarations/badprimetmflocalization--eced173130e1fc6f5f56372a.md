# BadPrimeTMFLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5bc801286ca2ce43a6b29f04808f8b3c287e027a5db652ebeb355229f68c3e6",
  "kind": "structure",
  "lexical_name": "BadPrimeTMFLocalization",
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
  "slug": "badprimetmflocalization--eced173130e1fc6f5f56372a",
  "source": {
    "blob": "304ff4fb3e57c0f2e2e0cabd16abec2e03d751ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 18,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/BadPrimeLocalization/Variant249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eced173130e1fc6f5f56372a8fb19cb1c6618f57733a975746ef6e03bba7d70b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/BadPrimeLocalization/Variant249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5bc801286ca2ce43a6b29f04808f8b3c287e027a5db652ebeb355229f68c3e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BadPrimeTMFLocalization where
  p : Nat
  prime : Nat.Prime p
  bad : p = 2 ∨ p = 3
  localTMF : SpectrumObject
  torsionWildness : Prop
  chromaticHeight? : Option Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/BadPrimeLocalization/Variant249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/BadPrimeLocalization/Variant249c53536ad6ea9a59540193ebba46d72323c2e476a3ae49c87db774487d0d75.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `304ff4fb3e57c0f2e2e0cabd16abec2e03d751ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
