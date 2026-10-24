# semiconjBy_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b37073d-8ad9-92fc-46dc-db627d985e79",
  "kind": "theorem",
  "lexical_name": "semiconjBy_op",
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
  "slug": "semiconjby-op--c40a44d5301a17ce56791e41",
  "source": {
    "blob": "39a68f1fa662f9ef6d0788780465bb8a391c1e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 205,
    "path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantab6d6abbe2487a2ab51d210b5df63232aa1d33259ae5a6aadfb3a6c1fb8a1763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c40a44d5301a17ce56791e41b8ce6a35f534f71b3d60d956a346099038dbfaf4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Opposite/Variantab6d6abbe2487a2ab51d210b5df63232aa1d33259ae5a6aadfb3a6c1fb8a1763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b37073d-8ad9-92fc-46dc-db627d985e79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem semiconjBy_op [Mul α] {a x y : α} : SemiconjBy (op a) (op y) (op x) ↔ SemiconjBy a x y := by
  simp only [SemiconjBy, ← op_mul, op_inj, eq_comm]

@[to_additive (attr := simp, nolint simpComm)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Opposite/Variantab6d6abbe2487a2ab51d210b5df63232aa1d33259ae5a6aadfb3a6c1fb8a1763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Opposite/Variantab6d6abbe2487a2ab51d210b5df63232aa1d33259ae5a6aadfb3a6c1fb8a1763.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39a68f1fa662f9ef6d0788780465bb8a391c1e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
