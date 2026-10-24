# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd70fa7e7c33cf418b62af6ab0552524a0e869bbd17013e3f132d4915c0c8769",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4f790d1fdca2c3e878e09558",
  "source": {
    "blob": "a4d4fd93c00f92010b2fc5a67b97abcba4db9cdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 520,
    "path": "GRWTSK/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f790d1fdca2c3e878e095582f4bdf458655674c71f1333c064ff6ee44dcbf16",
  "verification": {
    "reference": "docs/verification/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd70fa7e7c33cf418b62af6ab0552524a0e869bbd17013e3f132d4915c0c8769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := high) [CommRing (OfSemiring.Q α)] : OfNat (OfSemiring.Q α) n := by infer_instance
attribute [local instance] Semiring.natCast Ring.intCast
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d4fd93c00f92010b2fc5a67b97abcba4db9cdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
