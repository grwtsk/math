# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3779d181f539344d5ca212182121fc13aa1854595a44feef0f61936551e5eb9",
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
  "slug": "instance--f9b5180fad3030afe269e208",
  "source": {
    "blob": "01b0f880254e846ec94d3daec6b466a82e1687c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 146,
    "path": "GRWTSK/Algebra/Defs/Variantf4b308f7a29c01983bc338abe48f54c47c7f1a9cce2f0c9a4d2508012f380d65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9b5180fad3030afe269e2081c32c6dcd10138d934175935e62a824a2d7c240d",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantf4b308f7a29c01983bc338abe48f54c47c7f1a9cce2f0c9a4d2508012f380d65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3779d181f539344d5ca212182121fc13aa1854595a44feef0f61936551e5eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsStrictOrderedRing.noZeroDivisors : NoZeroDivisors R where
  eq_zero_or_eq_zero_of_mul_eq_zero {a b} hab := by
    contrapose! hab
    obtain ha | ha := hab.1.lt_or_gt <;> obtain hb | hb := hab.2.lt_or_gt
    exacts [(mul_pos_of_neg_of_neg ha hb).ne', (mul_neg_of_neg_of_pos ha hb).ne,
      (mul_neg_of_pos_of_neg ha hb).ne, (mul_pos ha hb).ne']

-- Note that we can't use `NoZeroDivisors.to_isDomain` since we are merely in a semiring.
-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantf4b308f7a29c01983bc338abe48f54c47c7f1a9cce2f0c9a4d2508012f380d65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantf4b308f7a29c01983bc338abe48f54c47c7f1a9cce2f0c9a4d2508012f380d65.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01b0f880254e846ec94d3daec6b466a82e1687c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
