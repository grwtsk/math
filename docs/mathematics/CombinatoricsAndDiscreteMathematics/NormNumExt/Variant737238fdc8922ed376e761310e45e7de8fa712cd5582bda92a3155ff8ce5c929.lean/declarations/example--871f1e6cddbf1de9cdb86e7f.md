# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:021fc1330aa22b081c8464a4be3979490322b40fb369e2eb82eca28a22659e1f",
  "kind": "example",
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
  "slug": "example--871f1e6cddbf1de9cdb86e7f",
  "source": {
    "blob": "154f728c4d909a18488af7c41c84821a092fd309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 378,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormNumExt/Variant737238fdc8922ed376e761310e45e7de8fa712cd5582bda92a3155ff8ce5c929.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:871f1e6cddbf1de9cdb86e7f701922db906fd30404ca95692eeb2a339b922f7f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NormNumExt/Variant737238fdc8922ed376e761310e45e7de8fa712cd5582bda92a3155ff8ce5c929.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:021fc1330aa22b081c8464a4be3979490322b40fb369e2eb82eca28a22659e1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ∑ _ : Fin 3, 1 = 3 := by norm_num1
/-
example : ∑ i : Fin 3, (i : ℕ) = 3 := by norm_num1
example : ((0 : Fin 3) : ℕ) = 0 := by norm_num1
example (f : Fin 3 → α) : ∑ i : Fin 3, f i = f 0 + f 1 + f 2 := by norm_num <;> ring
example (f : Fin 4 → α) : ∑ i : Fin 4, f i = f 0 + f 1 + f 2 + f 3 := by norm_num <;> ring
example (f : ℕ → α) : ∑ i ∈ {0, 1, 2}, f i = f 0 + f 1 + f 2 := by norm_num; ring
example (f : ℕ → α) : ∑ i ∈ {0, 2, 2, 3, 1, 0}, f i = f 0 + f 1 + f 2 + f 3 := by norm_num; ring
example (f : ℕ → α) : ∑ i ∈ {0, 2, 2 - 3, 3 - 1, 1, 0}, f i = f 0 + f 1 + f 2 := by norm_num; ring
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NormNumExt/Variant737238fdc8922ed376e761310e45e7de8fa712cd5582bda92a3155ff8ce5c929.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NormNumExt/Variant737238fdc8922ed376e761310e45e7de8fa712cd5582bda92a3155ff8ce5c929.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `154f728c4d909a18488af7c41c84821a092fd309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
