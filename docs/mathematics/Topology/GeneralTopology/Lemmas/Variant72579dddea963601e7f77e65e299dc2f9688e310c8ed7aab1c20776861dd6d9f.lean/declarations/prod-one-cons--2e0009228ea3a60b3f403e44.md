# prod_one_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:842ec841-8e14-e7b1-b871-a34ab83a3772",
  "kind": "theorem",
  "lexical_name": "prod_one_cons",
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
  "slug": "prod-one-cons--2e0009228ea3a60b3f403e44",
  "source": {
    "blob": "088bb68e57c76b3761bfb5ad01ff3a9f4bdc2362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1269,
    "line": 1267,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant72579dddea963601e7f77e65e299dc2f9688e310c8ed7aab1c20776861dd6d9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0009228ea3a60b3f403e446ea112eebe557fa59ce7cc00dc7b167de8d51f43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant72579dddea963601e7f77e65e299dc2f9688e310c8ed7aab1c20776861dd6d9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:842ec841-8e14-e7b1-b871-a34ab83a3772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1267–1269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_one_cons [Mul α] [One α] [Std.LawfulLeftIdentity (α := α) (· * ·) 1] {l : List α} :
    (1 :: l).prod = l.prod := by simp [Std.LawfulLeftIdentity.left_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant72579dddea963601e7f77e65e299dc2f9688e310c8ed7aab1c20776861dd6d9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant72579dddea963601e7f77e65e299dc2f9688e310c8ed7aab1c20776861dd6d9f.lean#L1267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088bb68e57c76b3761bfb5ad01ff3a9f4bdc2362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
