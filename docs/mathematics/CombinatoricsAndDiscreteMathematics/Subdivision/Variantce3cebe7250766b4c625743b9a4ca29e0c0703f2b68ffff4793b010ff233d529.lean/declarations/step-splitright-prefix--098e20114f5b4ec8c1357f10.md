# step_splitRight_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab661860-9bcd-a71b-bafa-6c5a99299448",
  "kind": "lemma",
  "lexical_name": "step_splitRight_prefix",
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
  "slug": "step-splitright-prefix--098e20114f5b4ec8c1357f10",
  "source": {
    "blob": "c3b53383fa26428246a16eb66ab1fc2c86fc1c14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 203,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantce3cebe7250766b4c625743b9a4ca29e0c0703f2b68ffff4793b010ff233d529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:098e20114f5b4ec8c1357f10cd38909bd9ff3d507d25ba5a6a327c133131d95a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantce3cebe7250766b4c625743b9a4ca29e0c0703f2b68ffff4793b010ff233d529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab661860-9bcd-a71b-bafa-6c5a99299448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma step_splitRight_prefix (n i : ℕ) (hi : i ≤ n)
    (t u : ℝ) (p : ControlRow M) :
    step t (splitRight (n + 1) p u) i =
      splitRight n (step (u + (1 - u) * t) p) u i := by
  simp only [step, splitRight]
  have hsub1 : n + 1 - i = (n - i) + 1 := by omega
  have hsub2 : n + 1 - (i + 1) = n - i := by omega
  rw [hsub1, hsub2]
  rw [show eval ((n - i) + 1) (fun j => p (i + j)) u =
      eval (n - i) (step u (fun j => p (i + j))) u by rfl]
  rw [← eval_rowCombo]
  apply eval_congr_prefix
  intro j hj
  simp only [rowCombo, step]
  have hidx : i + 1 + j = i + j + 1 := by omega
  rw [hidx]
  module

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variantce3cebe7250766b4c625743b9a4ca29e0c0703f2b68ffff4793b010ff233d529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variantce3cebe7250766b4c625743b9a4ca29e0c0703f2b68ffff4793b010ff233d529.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3b53383fa26428246a16eb66ab1fc2c86fc1c14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
