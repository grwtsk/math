# property

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8944ef2c-3697-22f2-55d6-45107caab2cb",
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
  "slug": "property--e3e826355b5c0fd3f7df0f0f",
  "source": {
    "blob": "23c6443c76265e8edb72ffe0f16497aae96eaf1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 296,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3e826355b5c0fd3f7df0f0f655c533d273a624c2b32dd088660836590f921ee",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8944ef2c-3697-22f2-55d6-45107caab2cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma property (h : IsImmersionAtOfComplement F I J n f x) :
    LiftSourceTargetPropertyAt I J n f x (ImmersionAtProp F I J M N) := h

/--
If `f` is an immersion at `x`, it maps its domain chart's target `(h.domChart.extend I).target`
to its codomain chart's target `(h.domChart.extend J).target`.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c6443c76265e8edb72ffe0f16497aae96eaf1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
