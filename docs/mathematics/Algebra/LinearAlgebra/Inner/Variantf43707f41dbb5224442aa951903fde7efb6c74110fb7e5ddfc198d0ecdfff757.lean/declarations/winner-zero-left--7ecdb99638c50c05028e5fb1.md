# wInner_zero_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6231835-ce5c-dcd0-d373-96fb7d07b30b",
  "kind": "lemma",
  "lexical_name": "wInner_zero_left",
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
  "slug": "winner-zero-left--7ecdb99638c50c05028e5fb1",
  "source": {
    "blob": "583f697e054712bb4da876bf3becc182955138b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ecdb99638c50c05028e5fb195a9620196df00e4ed9e51655b3e6b98e236ba15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6231835-ce5c-dcd0-d373-96fb7d07b30b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma wInner_zero_left (w : ι → ℝ) (g : ∀ i, E i) : ⟪0, g⟫_[𝕜, w] = 0 := by simp [wInner]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583f697e054712bb4da876bf3becc182955138b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
