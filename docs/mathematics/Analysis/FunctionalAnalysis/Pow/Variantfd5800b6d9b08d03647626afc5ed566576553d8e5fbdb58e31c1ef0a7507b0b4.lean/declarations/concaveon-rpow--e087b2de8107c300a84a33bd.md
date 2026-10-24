# concaveOn_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d79ae3eaeeba51ac94b41306024659a1996cd95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a99cc9d-c2b4-94f7-b2f3-455a15e730be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eaeac109-5c60-24aa-bc8a-f8f92bbd0d74",
  "kind": "lemma",
  "lexical_name": "concaveOn_rpow",
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
  "slug": "concaveon-rpow--e087b2de8107c300a84a33bd",
  "source": {
    "blob": "1d79ae3eaeeba51ac94b41306024659a1996cd95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e087b2de8107c300a84a33bdec9c3e43cd8661ef3842fee10b2a05dbd7d7328d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaeac109-5c60-24aa-bc8a-f8f92bbd0d74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma concaveOn_rpow {p : ℝ} (hp₀ : 0 ≤ p) (hp₁ : p ≤ 1) :
    ConcaveOn ℝ≥0 univ fun x : ℝ≥0 ↦ x ^ p := by
  by_cases hp : p = 0
  case pos => exact ⟨convex_univ, fun _ _ _ _ _ _ _ _ hab => by simp [hp, hab]⟩
  case neg =>
    push_neg at hp
    by_cases hp' : p = 1
    case pos => exact ⟨convex_univ, by simp [hp']⟩
    case neg =>
      push_neg at hp'
      exact (strictConcaveOn_rpow (by positivity) (lt_of_le_of_ne hp₁ hp')).concaveOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d79ae3eaeeba51ac94b41306024659a1996cd95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
