# FrobeniusNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:796790e905cf93dfafe1097310d5c36b3810ddfd42c549adbd3a4bd83243a5af",
  "kind": "def",
  "lexical_name": "FrobeniusNumber",
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
  "slug": "frobeniusnumber--e7db24b02f434e3375327f6a",
  "source": {
    "blob": "a45c5c2b15bd3a8dfa558d5dac809eb2fc0964a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 56,
    "path": "GRWTSK/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7db24b02f434e3375327f6ac040f74bcfd6267c149597f4f066ff9efd3ac457",
  "verification": {
    "reference": "docs/verification/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:796790e905cf93dfafe1097310d5c36b3810ddfd42c549adbd3a4bd83243a5af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FrobeniusNumber (n : ℕ) (s : Set ℕ) : Prop :=
  IsGreatest { k | k ∉ AddSubmonoid.closure s } n
#align is_frobenius_number FrobeniusNumber

variable {m n : ℕ}

/-- The **Chicken McNugget theorem** stating that the Frobenius number
  of positive numbers `m` and `n` is `m * n - m - n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a45c5c2b15bd3a8dfa558d5dac809eb2fc0964a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
