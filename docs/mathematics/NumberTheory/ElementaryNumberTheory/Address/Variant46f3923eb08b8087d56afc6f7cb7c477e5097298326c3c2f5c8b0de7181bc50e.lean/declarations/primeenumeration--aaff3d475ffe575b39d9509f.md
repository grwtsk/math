# PrimeEnumeration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea3d768c4b9456b65cf862b7489e93a1d3eaaa657056365fcc17a9d430f599bd",
  "kind": "structure",
  "lexical_name": "PrimeEnumeration",
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
  "slug": "primeenumeration--aaff3d475ffe575b39d9509f",
  "source": {
    "blob": "582efcab40f7eeef9fd47565664de208cf778b9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaff3d475ffe575b39d9509fff649788f47ed11aad488e1ade8d1188f98db36a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea3d768c4b9456b65cf862b7489e93a1d3eaaa657056365fcc17a9d430f599bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimeEnumeration where
  value : Nat → Nat
  prime : ∀ index, Nat.Prime (value index)
  strictlyIncreasing : StrictMono value
  canonical : ∀ index, value index = Nat.nth Nat.Prime index

/--
The actual increasing prime enumeration used by the project formalization.
Its two substantive obligations are Mathlib's infinitude-of-primes theorem and
the strict monotonicity theorem for `Nat.nth` on an infinite set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `582efcab40f7eeef9fd47565664de208cf778b9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
