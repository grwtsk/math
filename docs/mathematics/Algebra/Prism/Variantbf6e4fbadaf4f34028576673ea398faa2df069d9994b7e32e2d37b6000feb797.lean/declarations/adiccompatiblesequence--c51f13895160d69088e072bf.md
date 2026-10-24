# AdicCompatibleSequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9defccfcdf796e12d4c99505d9d71e95b9f1e12ead14eaf2e0685e86a576366f",
  "kind": "structure",
  "lexical_name": "AdicCompatibleSequence",
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
  "slug": "adiccompatiblesequence--c51f13895160d69088e072bf",
  "source": {
    "blob": "4269c43a7f136e14c686d8b55632a81c7bca7686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c51f13895160d69088e072bf662c5551b72c7282b3be3965027f39e7e16bb876",
  "verification": {
    "reference": "docs/verification/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9defccfcdf796e12d4c99505d9d71e95b9f1e12ead14eaf2e0685e86a576366f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdicCompatibleSequence (adicIdeal : Ideal A) where
  term : Nat → A
  compatible :
    ∀ {lower upper : Nat}, lower ≤ upper →
      term upper - term lower ∈ adicIdeal ^ (lower + 1)

/--
Classical separated adic completeness: every compatible sequence has one and
only one limit modulo every positive power of the ideal.

This is deliberately not called derived completeness.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prism/Variantbf6e4fbadaf4f34028576673ea398faa2df069d9994b7e32e2d37b6000feb797.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4269c43a7f136e14c686d8b55632a81c7bca7686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
