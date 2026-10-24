# upper_sub_lower_splitCenterBox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56cb83bc-2a43-6e0d-cb96-ef0eeb365e64",
  "kind": "theorem",
  "lexical_name": "upper_sub_lower_splitCenterBox",
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
  "slug": "upper-sub-lower-splitcenterbox--4bb8df30ac3d6c6c96be9a47",
  "source": {
    "blob": "86bb52b980f0bbac5b0258efb76daa4bbd224e09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bb8df30ac3d6c6c96be9a47f3af129ade6d8287c8a13fe04cb31b33b37cd989",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56cb83bc-2a43-6e0d-cb96-ef0eeb365e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_sub_lower_splitCenterBox (I : Box ι) (s : Set ι) (i : ι) :
    (I.splitCenterBox s).upper i - (I.splitCenterBox s).lower i = (I.upper i - I.lower i) / 2 := by
  by_cases i ∈ s <;> field_simp [splitCenterBox] <;> field_simp [mul_two, two_mul]

/-- Let `p` be a predicate on `Box ι`, let `I` be a box. Suppose that the following two properties
hold true.

* `H_ind` : Consider a smaller box `J ≤ I`. The hyperplanes passing through the center of `J` split
  it into `2 ^ n` boxes. If `p` holds true on each of these boxes, then it true on `J`.

* `H_nhds` : For each `z` in the closed box `I.Icc` there exists a neighborhood `U` of `z` within
  `I.Icc` such that for every box `J ≤ I` such that `z ∈ J.Icc ⊆ U`, if `J` is homothetic to `I`
  with a coefficient of the form `1 / 2 ^ m`, then `p` is true on `J`.

Then `p I` is true. See also `BoxIntegral.Box.subbox_induction_on` for a version using
`BoxIntegral.Prepartition.splitCenter` instead of `BoxIntegral.Box.splitCenterBox`.

The proof still works if we assume `H_ind` only for subboxes `J ≤ I` that are homothetic to `I` with
a coefficient of the form `2⁻ᵐ` but we do not need this generalization yet. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86bb52b980f0bbac5b0258efb76daa4bbd224e09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
