# decodeChar_encodeChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69f6b723-7d90-4262-480a-29a865d75d5a",
  "kind": "theorem",
  "lexical_name": "decodeChar_encodeChar",
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
  "slug": "decodechar-encodechar--5f3b59b129e9541c3ae892d4",
  "source": {
    "blob": "34842f544b53c9ed6b375df6fce249942bd7ac12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f3b59b129e9541c3ae892d4a52617a69a148de6e9a7ce05fb356c2cc4c21278",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69f6b723-7d90-4262-480a-29a865d75d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem decodeChar_encodeChar (x) : decodeChar (encodeChar x) = x := by
  ext; simp only [decodeChar, encodeChar]
  split
  · simp only [Char.ofNatAux, Char.toNat]; rfl
  · have : ¬ x.toNat - (Char.maxSurrogate + 1 - Char.minSurrogate) < Char.minSurrogate := by
      cases x; grind [Char.toNat]
    have : Char.maxSurrogate + 1 - Char.minSurrogate ≤ x.toNat := by grind
    simp [Char.ofNatAux, *]; rfl

/-- Encode `Option (Fin n)` into `Fin (n+1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variant86bd5bb9f21dac5cf8ea1d290c0c49e199ce45af1a8c546ad2e3ece0a5b09bb1.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34842f544b53c9ed6b375df6fce249942bd7ac12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
