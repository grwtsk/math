# commute_star_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f2bbc43-fdc3-4b39-dc57-a0b735d6783e",
  "kind": "lemma",
  "lexical_name": "commute_star_iff",
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
  "slug": "commute-star-iff--90e9e60dc677732f20c77a33",
  "source": {
    "blob": "7ac4c8f9a5668675ee1aff87de9db18f15dccf7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 146,
    "path": "GRWTSK/Algebra/Pointwise/Variant16fa5d84c34ff5ed92b7bcf0aaea6308386901301cdde65f1bb10001637f5416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90e9e60dc677732f20c77a3371b9a7980b6c17342ca4de3ef05f3e69a3b321bb",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variant16fa5d84c34ff5ed92b7bcf0aaea6308386901301cdde65f1bb10001637f5416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f2bbc43-fdc3-4b39-dc57-a0b735d6783e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma commute_star_iff {α : Type*} [Mul α] [StarMul α] {s : Set α} :
    (star s).Pairwise Commute ↔ s.Pairwise Commute := by
  simp only [Set.Pairwise]
  conv_rhs => simp +singlePass only [star_involutive.surjective.forall]
  simp

alias ⟨commute_of_star, commute_star⟩ := commute_star_iff

end Set.Pairwise
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variant16fa5d84c34ff5ed92b7bcf0aaea6308386901301cdde65f1bb10001637f5416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variant16fa5d84c34ff5ed92b7bcf0aaea6308386901301cdde65f1bb10001637f5416.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ac4c8f9a5668675ee1aff87de9db18f15dccf7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
