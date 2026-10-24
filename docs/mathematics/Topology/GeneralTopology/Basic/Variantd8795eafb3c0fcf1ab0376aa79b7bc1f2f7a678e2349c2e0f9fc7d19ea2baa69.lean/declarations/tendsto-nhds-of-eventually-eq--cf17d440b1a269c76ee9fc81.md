# tendsto_nhds_of_eventually_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f78df2a1-f548-2fd8-6707-569caf4909ca",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_of_eventually_eq",
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
  "slug": "tendsto-nhds-of-eventually-eq--cf17d440b1a269c76ee9fc81",
  "source": {
    "blob": "bfc050adf1d8aa5401546c9ece65abb2978908e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1091,
    "line": 1077,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd8795eafb3c0fcf1ab0376aa79b7bc1f2f7a678e2349c2e0f9fc7d19ea2baa69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf17d440b1a269c76ee9fc81116cd5962e401981e1f697031b02d1d30b77a7fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd8795eafb3c0fcf1ab0376aa79b7bc1f2f7a678e2349c2e0f9fc7d19ea2baa69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f78df2a1-f548-2fd8-6707-569caf4909ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1077–1091.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_of_eventually_eq {f : β → α} {a : α} (h : ∀ᶠ x in l, f x = a) :
    Tendsto f l (𝓝 a) :=
  tendsto_const_nhds.congr' (.symm h)

/-!
### Cluster points

In this section we define [cluster points](https://en.wikipedia.org/wiki/Limit_point)
(also known as limit points and accumulation points) of a filter and of a sequence.
-/


/-- A point `x` is a cluster point of a filter `F` if `𝓝 x ⊓ F ≠ ⊥`. Also known as
an accumulation point or a limit point, but beware that terminology varies. This
is *not* the same as asking `𝓝[≠] x ⊓ F ≠ ⊥`. See `mem_closure_iff_clusterPt` in particular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd8795eafb3c0fcf1ab0376aa79b7bc1f2f7a678e2349c2e0f9fc7d19ea2baa69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd8795eafb3c0fcf1ab0376aa79b7bc1f2f7a678e2349c2e0f9fc7d19ea2baa69.lean#L1077).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc050adf1d8aa5401546c9ece65abb2978908e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
