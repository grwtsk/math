# Nat.Prime.isPrimePow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02fe698e-f1e5-28f6-32d8-f0ae657fba7a",
  "kind": "theorem",
  "lexical_name": "Nat.Prime.isPrimePow",
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
  "slug": "nat-prime-isprimepow--bc2cb35d5954262ff917edc9",
  "source": {
    "blob": "8de84acbd4d8ce5f447b3ab23a15a592c2321cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 75,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc2cb35d5954262ff917edc908193c26517da7efa0df9c981d91964fcdeeca64",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02fe698e-f1e5-28f6-32d8-f0ae657fba7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.Prime.isPrimePow {p : ℕ} (hp : p.Prime) : IsPrimePow p :=
  _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.IsPrimePow.Variantda1d4aa7e898058f4413a9229e811c2eaee313d93e3616b5b1402d13b581cf22.Prime.isPrimePow (prime_iff.mp hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de84acbd4d8ce5f447b3ab23a15a592c2321cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
