# actualMixedWorkDensity_zero_outside_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b35fc3fadd281e44607276ffbaa7ffc1bfa110c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 816,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d748914c-f2ae-430c-49c5-e6137063275a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46303cf0-29b2-31d9-2812-775559bd357c",
  "kind": "theorem",
  "lexical_name": "actualMixedWorkDensity_zero_outside_window",
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
  "slug": "actualmixedworkdensity-zero-outside-window--2fda0160c6f154cdd97d2cf5",
  "source": {
    "blob": "b35fc3fadd281e44607276ffbaa7ffc1bfa110c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 816,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variant0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fda0160c6f154cdd97d2cf5a9edc6d6f0880efb0e961ef29e05c525e4244c3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Reference29/Variant0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46303cf0-29b2-31d9-2812-775559bd357c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 816–824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMixedWorkDensity_zero_outside_window (A : ℝ) (hA : 1 ≤ A) (v : ℝ)
    (hv : v ∉ actualWorkWindow A) : actualMixedWorkDensity A v = 0 := by
  have hp : 0 < A := by linarith
  unfold actualMixedWorkDensity
  rw [actual_profile_product_zero_outside_window _ hA (deriv_source_tsupport_subset hp) hv,
    actual_profile_product_zero_outside_window _ hA (source_tsupport_subset hp) hv]
  ring

/-- Exact physical localization of the original mixed work, without an absolute estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Reference29/Variant0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variant0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean#L816).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35fc3fadd281e44607276ffbaa7ffc1bfa110c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
