# property

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 660,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49a8bc25-fc70-2038-5d4d-8c9795b26a82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3753d7ef-ac66-7c3c-14a1-ab7779e92fda",
  "kind": "lemma",
  "lexical_name": "property",
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
  "slug": "property--553c434be28b5aee8fb27bde",
  "source": {
    "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 682,
    "line": 660,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:553c434be28b5aee8fb27bdecc23c6fa41df2f71a2b57198f77ea9b3b5556e16",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3753d7ef-ac66-7c3c-14a1-ab7779e92fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma property (h : IsImmersionAt I J n f x) :
    LiftSourceTargetPropertyAt I J n f x (ImmersionAtProp h.complement I J M N) :=
  h.isImmersionAtOfComplement_complement.property

/--
If `f` is an immersion at `x`, it maps its domain chart's target to its codomain chart's target:
`(h.domChart.extend I).target` to `(h.domChart.extend J).target`.

Roig and Domingues' [roigdomingues1992] definition of immersions only asks for this inclusion
between the targets of the local charts: using mathlib's formalisation conventions, that condition
is *slightly* weaker than `source_subset_preimage_source`: the latter implies that
`h.codChart.extend J ∘ f` maps `h.domChart.source` to
`(h.codChart.extend J).target = (h.codChart.extend I) '' h.codChart.source`,
but that does *not* imply `f` maps `h.domChart.source` to `h.codChart.source`;
a priori `f` could map some point `f ∘ h.domChart.extend I x ∉ h.codChart.source` into the target.
Note that this difference only occurs because of our design using junk values;
this is not a mathematically meaningful difference.

At the same time, this condition is fairly weak: it is implied, for instance, by `f` being
continuous at `x` (see `mk_of_continuousAt`), which is easy to ascertain in practice.

See `target_subset_preimage_target` for a version stated using preimages instead of images.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7789456c476b7e65495bc8ecaecf076cf0d9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
