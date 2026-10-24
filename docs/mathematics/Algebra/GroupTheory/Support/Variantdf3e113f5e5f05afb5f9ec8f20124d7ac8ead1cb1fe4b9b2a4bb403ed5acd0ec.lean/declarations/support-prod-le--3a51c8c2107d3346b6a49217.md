# support_prod_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30e95eb2-2c24-72a6-878b-7aad571a28b3",
  "kind": "theorem",
  "lexical_name": "support_prod_le",
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
  "slug": "support-prod-le--3a51c8c2107d3346b6a49217",
  "source": {
    "blob": "c93e8693cb63e251b69461c06aa8d1f21b23e0bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 458,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a51c8c2107d3346b6a492176d454f1de4550dbdc91474518f3e3bec2d4cfbb7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30e95eb2-2c24-72a6-878b-7aad571a28b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_prod_le (l : List (Perm α)) : l.prod.support ≤ (l.map support).foldr (· ⊔ ·) ⊥ := by
  induction' l with hd tl hl
  · simp
  · rw [List.prod_cons, List.map_cons, List.foldr_cons]
    refine (support_mul_le hd tl.prod).trans ?_
    exact sup_le_sup le_rfl hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variantdf3e113f5e5f05afb5f9ec8f20124d7ac8ead1cb1fe4b9b2a4bb403ed5acd0ec.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c93e8693cb63e251b69461c06aa8d1f21b23e0bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
