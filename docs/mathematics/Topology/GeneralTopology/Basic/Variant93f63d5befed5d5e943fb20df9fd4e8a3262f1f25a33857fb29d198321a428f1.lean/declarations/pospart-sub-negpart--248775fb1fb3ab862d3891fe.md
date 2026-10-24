# posPart_sub_negPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5db851974ad54f1d897b93267b0d34c4bc5e0e65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11ff920d-4df7-32fc-3064-f93bed518f94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70ed22ac-fbd4-30bc-3066-33497ab79a8f",
  "kind": "lemma",
  "lexical_name": "posPart_sub_negPart",
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
  "slug": "pospart-sub-negpart--248775fb1fb3ab862d3891fe",
  "source": {
    "blob": "5db851974ad54f1d897b93267b0d34c4bc5e0e65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:248775fb1fb3ab862d3891feb414f7089317b67f9c815def9f55746324032075",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70ed22ac-fbd4-30bc-3066-33497ab79a8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma posPart_sub_negPart (a : A) (ha : IsSelfAdjoint a := by cfc_tac) : a⁺ - a⁻ = a := by
  rw [posPart_def, negPart_def]
  rw [← cfcₙ_sub _ _]
  conv_rhs => rw [← cfcₙ_id ℝ a]
  congr! 1 with x hx
  exact _root_.posPart_sub_negPart x

section Unique

variable [T2Space A]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant93f63d5befed5d5e943fb20df9fd4e8a3262f1f25a33857fb29d198321a428f1.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5db851974ad54f1d897b93267b0d34c4bc5e0e65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
