# IsCompact.closure_subset_measurableSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa0a4956-7ce9-6457-5f8c-cf7ae27dacdf",
  "kind": "theorem",
  "lexical_name": "IsCompact.closure_subset_measurableSet",
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
  "slug": "iscompact-closure-subset-measurableset--4fbba37a27672757e8485a4d",
  "source": {
    "blob": "ec87012329030fbd534787292e44cc35682b104e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 282,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fbba37a27672757e8485a4de1d3b58a7c4ad4c3d6258c5be34945d24f073e60",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa0a4956-7ce9-6457-5f8c-cf7ae27dacdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.closure_subset_measurableSet [R1Space γ] {K s : Set γ} (hK : IsCompact K)
    (hs : MeasurableSet s) (hKs : K ⊆ s) : closure K ⊆ s := by
  rw [hK.closure_eq_biUnion_inseparable, iUnion₂_subset_iff]
  exact fun x hx y hy ↦ (hy.mem_measurableSet_iff hs).1 (hKs hx)

/-- In an R₁ topological space with Borel measure `μ`,
the measure of the closure of a compact set `K` is equal to the measure of `K`.

See also `MeasureTheory.Measure.OuterRegular.measure_closure_eq_of_isCompact`
for a version that assumes `μ` to be outer regular
but does not assume the `σ`-algebra to be Borel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante1020e9eb39e8f37f0fee32d09e74b82cf5f448ef6e60232fe8a8d1af9409a4f.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec87012329030fbd534787292e44cc35682b104e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
