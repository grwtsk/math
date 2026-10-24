# normalized_neutral_half_distinct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a713333adcb9c2a1d9e3b5226aa27eced1bdaef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 541,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e588dce4-bac7-1f73-f499-20cde0a748e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d076782-762d-fafe-0791-20619bc3e6f0",
  "kind": "theorem",
  "lexical_name": "normalized_neutral_half_distinct",
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
  "slug": "normalized-neutral-half-distinct--42f7481fdd96ec66a51150b5",
  "source": {
    "blob": "0a713333adcb9c2a1d9e3b5226aa27eced1bdaef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 541,
    "path": "GRWTSK/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42f7481fdd96ec66a51150b554c56f4c72b0cb5250eaba6c4d1ff84138f0cbbc",
  "verification": {
    "reference": "docs/verification/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d076782-762d-fafe-0791-20619bc3e6f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_neutral_half_distinct (mid amplitude : ℝ) :
    colorSampleAt mid amplitude NormalizedPhase.zero ≠
      colorSampleAt mid amplitude NormalizedPhase.half := by
  rw [colorSampleAt_zero, colorSampleAt_half]
  intro h
  have hGreen := congrArg ColorSample.greenShift h
  norm_num at hGreen

/-- Phase one is the same point of `ℝ / ℤ` as phase zero. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a713333adcb9c2a1d9e3b5226aa27eced1bdaef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
