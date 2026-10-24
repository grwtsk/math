# log2_le_logb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a62333a9-86c5-4d4c-b32f-cc64ef69390c",
  "kind": "lemma",
  "lexical_name": "log2_le_logb",
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
  "slug": "log2-le-logb--4c557825ebe10c3782c9a8ad",
  "source": {
    "blob": "f0d46814e45181e935356cd687f0bc8c17db2ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 433,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Base/Varianta420bb0bd95002655a9c4f35f14c096765e9a36c4bc2c50ccc1e0d18e6fd709b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c557825ebe10c3782c9a8ad1bd2c1649fcbe20a4b45b11c56dc6682c24c2487",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Base/Varianta420bb0bd95002655a9c4f35f14c096765e9a36c4bc2c50ccc1e0d18e6fd709b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a62333a9-86c5-4d4c-b32f-cc64ef69390c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log2_le_logb (n : ℕ) : Nat.log2 n ≤ Real.logb 2 n := by
  calc (Nat.log2 n : ℝ) = Nat.log 2 n := mod_cast Nat.log2_eq_log_two
  _ ≤ Real.logb 2 n := natLog_le_logb _ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Base/Varianta420bb0bd95002655a9c4f35f14c096765e9a36c4bc2c50ccc1e0d18e6fd709b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Base/Varianta420bb0bd95002655a9c4f35f14c096765e9a36c4bc2c50ccc1e0d18e6fd709b.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0d46814e45181e935356cd687f0bc8c17db2ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
