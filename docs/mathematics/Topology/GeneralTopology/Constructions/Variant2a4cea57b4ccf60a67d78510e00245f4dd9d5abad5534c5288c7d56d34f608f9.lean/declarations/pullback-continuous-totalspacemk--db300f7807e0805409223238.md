# Pullback.continuous_totalSpaceMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9181d0f-e0fb-7c16-fd24-4e222ba1e371",
  "kind": "theorem",
  "lexical_name": "Pullback.continuous_totalSpaceMk",
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
  "slug": "pullback-continuous-totalspacemk--db300f7807e0805409223238",
  "source": {
    "blob": "e0f42dffdd9e481b3f6c0d9a92a70235803bfea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 298,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db300f7807e0805409223238256c5fab110b463f3526614c67386c091a65a0e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9181d0f-e0fb-7c16-fd24-4e222ba1e371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pullback.continuous_totalSpaceMk [∀ x, TopologicalSpace (E x)] [FiberBundle F E]
    {f : B' → B} {x : B'} : Continuous (@TotalSpace.mk _ F (f *ᵖ E) x) := by
  simp only [continuous_iff_le_induced, Pullback.TotalSpace.topologicalSpace, induced_compose,
    induced_inf, Function.comp_def, induced_const, top_inf_eq, pullbackTopology_def]
  exact (FiberBundle.totalSpaceMk_isInducing F E (f x)).eq_induced.le

variable {E F}
variable [∀ _b, Zero (E _b)] {K : Type U} [FunLike K B' B] [ContinuousMapClass K B' B]

/-- A fiber bundle trivialization can be pulled back to a trivialization on the pullback bundle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant2a4cea57b4ccf60a67d78510e00245f4dd9d5abad5534c5288c7d56d34f608f9.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0f42dffdd9e481b3f6c0d9a92a70235803bfea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
