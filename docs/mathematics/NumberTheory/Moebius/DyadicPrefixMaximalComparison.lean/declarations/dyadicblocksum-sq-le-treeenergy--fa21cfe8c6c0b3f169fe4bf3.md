# dyadicBlockSum_sq_le_treeEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f738b776-d99c-3c18-bd2d-dbf17428a2ff",
  "kind": "theorem",
  "lexical_name": "dyadicBlockSum_sq_le_treeEnergy",
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
  "slug": "dyadicblocksum-sq-le-treeenergy--fa21cfe8c6c0b3f169fe4bf3",
  "source": {
    "blob": "a48f1478b662e4895cf30c6544cc14872b71f474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa21cfe8c6c0b3f169fe4bf37c6b26af65446503943c8442aed0535f092f1a35",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f738b776-d99c-3c18-bd2d-dbf17428a2ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicBlockSum_sq_le_treeEnergy
    (a : ℕ → ℝ) (start m : ℕ) :
    dyadicBlockSum a start m ^ 2 ≤ dyadicTreeEnergy a start m := by
  cases m with
  | zero =>
      simp [dyadicTreeEnergy]
  | succ m =>
      simp only [dyadicTreeEnergy]
      have hL := dyadicTreeEnergy_nonneg a start m
      have hR := dyadicTreeEnergy_nonneg a (start + 2 ^ m) m
      nlinarith

/-- Algebraic payment for adjoining one complete dyadic block to a prefix
already controlled by `k` units of right-subtree energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48f1478b662e4895cf30c6544cc14872b71f474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
