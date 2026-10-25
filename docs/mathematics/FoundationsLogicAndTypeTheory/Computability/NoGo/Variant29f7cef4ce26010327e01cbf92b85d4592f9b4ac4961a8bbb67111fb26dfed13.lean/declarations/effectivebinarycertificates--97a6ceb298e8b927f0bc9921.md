# EffectiveBinaryCertificates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b99b17f853d18cec421813ebdb4fe152ed95a2f4048fc76089834544fbde37a2",
  "kind": "structure",
  "lexical_name": "EffectiveBinaryCertificates",
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
  "slug": "effectivebinarycertificates--97a6ceb298e8b927f0bc9921",
  "source": {
    "blob": "02f57db9e30061902c51cd9a73168d2cd755052f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97a6ceb298e8b927f0bc9921400c699fdf12b041ec87f211e3f3645e9353ff46",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b99b17f853d18cec421813ebdb4fe152ed95a2f4048fc76089834544fbde37a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EffectiveBinaryCertificates (input : ℕ) where
  /-- Computable candidate acceptance for positive certificates. -/
  positive : Nat.Partrec.Code × ℕ → Bool
  /-- Total effective checking of finite positive certificate codes. -/
  positiveComputable : Computable positive
  /-- Positive soundness and completeness for the exact halting predicate. -/
  positiveExact : ∀ program,
    (∃ certificate, positive (program, certificate) = true) ↔ ProgramHalts input program
  /-- Computable candidate acceptance for negative certificates. -/
  negative : Nat.Partrec.Code × ℕ → Bool
  /-- Total effective checking of finite negative certificate codes. -/
  negativeComputable : Computable negative
  /-- Negative soundness and completeness for the complement of the same predicate. -/
  negativeExact : ∀ program,
    (∃ certificate, negative (program, certificate) = true) ↔ ¬ProgramHalts input program

/-- No total computable finite checker is sound and complete for both halting polarities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02f57db9e30061902c51cd9a73168d2cd755052f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
