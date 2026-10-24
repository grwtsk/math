# HasFDerivWithinAt.eventually_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5115ebd8cc13e0c5aadce48c6d8b11a5bcc72b9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4211574a-06c3-c0ad-9c99-09b66d3de019",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:976ccfc4-0b1a-8bcc-72ec-f27054fe958a",
  "kind": "theorem",
  "lexical_name": "HasFDerivWithinAt.eventually_notMem",
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
  "slug": "hasfderivwithinat-eventually-notmem--4efbd4f4599beb97db7b7c87",
  "source": {
    "blob": "5115ebd8cc13e0c5aadce48c6d8b11a5bcc72b9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 347,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4efbd4f4599beb97db7b7c871d8d05de057e4f93971aed313424e0e1d7ba918f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:976ccfc4-0b1a-8bcc-72ec-f27054fe958a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivWithinAt.eventually_notMem (h : HasFDerivWithinAt f f' s x)
    (hf' : ∃ C, AntilipschitzWith C f') (t : Set F) (ht : ¬ AccPt (f x) (𝓟 t)) :
    ∀ᶠ z in 𝓝[s \ {x}] x, f z ∉ t := by
  rw [accPt_iff_frequently_nhdsNE, not_frequently] at ht
  exact eventually_map.mp (ht.filter_mono (h.tendsto_nhdsWithin_nhdsNE hf'))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantdc45140498e5291ec22cd09d54e878a2c84e0aac253512cf5b67bcd2ef4eed37.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5115ebd8cc13e0c5aadce48c6d8b11a5bcc72b9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
