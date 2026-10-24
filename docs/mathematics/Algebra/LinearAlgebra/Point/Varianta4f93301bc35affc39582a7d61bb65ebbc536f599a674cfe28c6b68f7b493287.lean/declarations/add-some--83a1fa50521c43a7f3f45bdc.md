# add_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba657405-ed81-dd3c-5549-f3131a0b4654",
  "kind": "lemma",
  "lexical_name": "add_some",
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
  "slug": "add-some--83a1fa50521c43a7f3f45bdc",
  "source": {
    "blob": "1c3fb4147b96c096ea6786a2b255719b2bab131e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 544,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83a1fa50521c43a7f3f45bdc8bb17b3583738a346f6da12605dd10bb14d3f795",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba657405-ed81-dd3c-5549-f3131a0b4654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add_some {x₁ x₂ y₁ y₂ : F} (hxy : ¬(x₁ = x₂ ∧ y₁ = W.negY x₂ y₂)) {h₁ : W.Nonsingular x₁ y₁}
    {h₂ : W.Nonsingular x₂ y₂} : some h₁ + some h₂ = some (nonsingular_add h₁ h₂ hxy) := by
  simp only [add_def, add, dif_neg hxy]

@[deprecated (since := "2025-02-28")] alias add_of_imp := add_some

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Varianta4f93301bc35affc39582a7d61bb65ebbc536f599a674cfe28c6b68f7b493287.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3fb4147b96c096ea6786a2b255719b2bab131e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
