# ContinuousOn.div₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d872df9b-49f8-2a9e-2001-64075f312cbd",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.div₀",
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
  "slug": "continuouson-div--7ec867f767af19376e73bd38",
  "source": {
    "blob": "6e88a392290dd1450ae457dbe31a9f7810718149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ec867f767af19376e73bd3806be02591ec7a7f8adedc86c2488df156f1257c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d872df9b-49f8-2a9e-2001-64075f312cbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.div₀ (hf : ContinuousOn f s) (hg : ContinuousOn g s) (h₀ : ∀ x ∈ s, g x ≠ 0) :
    ContinuousOn (fun x => f x / g x) s := ContinuousOn.div hf hg h₀

/-- The function `f x / g x` is discontinuous when `g x = 0`. However, under appropriate
conditions, `h x (f x / g x)` is still continuous.  The condition is that if `g a = 0` then `h x y`
must tend to `h a 0` when `x` tends to `a`, with no information about `y`. This is represented by
the `⊤` filter.  Note: `tendsto_prod_top_iff` characterizes this convergence in uniform spaces.  See
also `Filter.prod_top` and `Filter.mem_prod_top`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupWithZero/Variantd67949658e1f61e9ed24f615eabedf282f1c6c7680ec4832ce3d1375a5db8270.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e88a392290dd1450ae457dbe31a9f7810718149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
