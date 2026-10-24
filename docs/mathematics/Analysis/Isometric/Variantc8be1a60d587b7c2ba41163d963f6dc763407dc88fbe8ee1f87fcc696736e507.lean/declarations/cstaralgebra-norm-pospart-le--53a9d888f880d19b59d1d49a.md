# CStarAlgebra.norm_posPart_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aec0e56a842b23f008c37c4a785bf74e3485a516",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ae90fcb-08f9-21de-dec2-191218dda3a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7c78682-36fe-b944-ea89-004f94bd0b98",
  "kind": "lemma",
  "lexical_name": "CStarAlgebra.norm_posPart_le",
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
  "slug": "cstaralgebra-norm-pospart-le--53a9d888f880d19b59d1d49a",
  "source": {
    "blob": "aec0e56a842b23f008c37c4a785bf74e3485a516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 27,
    "path": "GRWTSK/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53a9d888f880d19b59d1d49a535f29ad1899d46f55ac90c4ff0391127a7a4485",
  "verification": {
    "reference": "docs/verification/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7c78682-36fe-b944-ea89-004f94bd0b98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CStarAlgebra.norm_posPart_le (a : A) : ‖a⁺‖ ≤ ‖a‖ := by
  by_cases ha : IsSelfAdjoint a
  case neg => simp [CFC.posPart_def, cfcₙ_apply_of_not_predicate a ha]
  refine norm_cfcₙ_le fun x hx ↦ ?_
  obtain (h | h) := le_or_lt x 0
  · simp [posPart_def, max_eq_right h]
  · simp only [posPart_def, max_eq_left h.le]
    exact NonUnitalIsometricContinuousFunctionalCalculus.norm_quasispectrum_le a hx ha

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Isometric/Variantc8be1a60d587b7c2ba41163d963f6dc763407dc88fbe8ee1f87fcc696736e507.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aec0e56a842b23f008c37c4a785bf74e3485a516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
