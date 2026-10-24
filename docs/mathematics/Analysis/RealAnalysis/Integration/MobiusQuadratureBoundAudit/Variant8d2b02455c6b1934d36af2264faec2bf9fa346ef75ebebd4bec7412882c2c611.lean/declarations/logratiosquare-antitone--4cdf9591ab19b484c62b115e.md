# logRatioSquare_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f29ec908074cd5bd59eb2b9ec46d7af938a5f941",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84ac5444-b4f2-2b90-8bdc-f475c09e5ebd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7accb28b-14a7-de9a-bb87-7896b7d06e51",
  "kind": "theorem",
  "lexical_name": "logRatioSquare_antitone",
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
  "slug": "logratiosquare-antitone--4cdf9591ab19b484c62b115e",
  "source": {
    "blob": "f29ec908074cd5bd59eb2b9ec46d7af938a5f941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cdf9591ab19b484c62b115e1b2aafa5d0e06e77b88ee5a89c604524902d0f4b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7accb28b-14a7-de9a-bb87-7896b7d06e51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logRatioSquare_antitone (x : ℝ) (hx : 0 < x) :
    AntitoneOn (logRatioSquare x) (Ioc 0 x) := by
  intro a ha b hb hab
  have hr : x / b ≤ x / a := div_le_div_of_nonneg_left hx.le ha.1 hab
  have hlog : Real.log (x / b) ≤ Real.log (x / a) :=
    Real.log_le_log (div_pos hx hb.1) hr
  exact pow_le_pow_left₀ (Real.log_nonneg ((le_div_iff₀ hb.1).mpr (by simpa using hb.2))) hlog 2

/-- A finite sum of right-endpoint samples is bounded using only open unit intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f29ec908074cd5bd59eb2b9ec46d7af938a5f941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
