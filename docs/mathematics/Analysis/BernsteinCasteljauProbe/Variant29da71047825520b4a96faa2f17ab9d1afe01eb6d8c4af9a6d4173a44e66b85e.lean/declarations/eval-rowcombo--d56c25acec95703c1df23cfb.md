# eval_rowCombo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bbf0723-dca4-1919-ef9f-bdae9f99fe13",
  "kind": "lemma",
  "lexical_name": "eval_rowCombo",
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
  "slug": "eval-rowcombo--d56c25acec95703c1df23cfb",
  "source": {
    "blob": "bcb8a391e0329bd57112f9691e07d0754590ceb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 147,
    "path": "GRWTSK/Analysis/BernsteinCasteljauProbe/Variant29da71047825520b4a96faa2f17ab9d1afe01eb6d8c4af9a6d4173a44e66b85e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d56c25acec95703c1df23cfbc757c36b0a28e82b74267d28e7cb266f1e48602b",
  "verification": {
    "reference": "docs/verification/Analysis/BernsteinCasteljauProbe/Variant29da71047825520b4a96faa2f17ab9d1afe01eb6d8c4af9a6d4173a44e66b85e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bbf0723-dca4-1919-ef9f-bdae9f99fe13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eval_rowCombo (n : ℕ) (t a : ℝ) (p q : ControlRow M) :
    eval n (rowCombo a p q) t =
      (1 - a) • eval n p t + a • eval n q t := by
  induction n generalizing p q with
  | zero => rfl
  | succ n ih =>
      rw [eval, step_rowCombo, ih]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BernsteinCasteljauProbe/Variant29da71047825520b4a96faa2f17ab9d1afe01eb6d8c4af9a6d4173a44e66b85e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BernsteinCasteljauProbe/Variant29da71047825520b4a96faa2f17ab9d1afe01eb6d8c4af9a6d4173a44e66b85e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcb8a391e0329bd57112f9691e07d0754590ceb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
