# Pullback.continuous_totalSpaceMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5860970ef7d2acb019d1391f9c135f2e221e705c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76ccf1d8-71f0-cdca-4ea3-593a70d9e41b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b9abe57-8e2e-eaaa-d7ac-162d4f562744",
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
  "slug": "pullback-continuous-totalspacemk--a1e629b5c1529e057fcd4778",
  "source": {
    "blob": "5860970ef7d2acb019d1391f9c135f2e221e705c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 290,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e629b5c1529e057fcd4778c4eb196fc50b147908e0b646258d124bf4db3606",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b9abe57-8e2e-eaaa-d7ac-162d4f562744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–299.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5860970ef7d2acb019d1391f9c135f2e221e705c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
