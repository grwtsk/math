# t2Space_of_properSMul_of_t1Group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47fd39ea3d4f5931c87219cb28766b65076f3078",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:485ce374-8ecb-da88-dc1b-833d5c04c79a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70c41ec9-435d-2a9a-fd85-04e956a637b0",
  "kind": "theorem",
  "lexical_name": "t2Space_of_properSMul_of_t1Group",
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
  "slug": "t2space-of-propersmul-of-t1group--4f2e5d65a67e70fb4b4b4410",
  "source": {
    "blob": "47fd39ea3d4f5931c87219cb28766b65076f3078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f2e5d65a67e70fb4b4b4410256d59608e1217910dea5957c89b3f8af304ef6f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70c41ec9-435d-2a9a-fd85-04e956a637b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem t2Space_of_properSMul_of_t1Group [h_proper : ProperSMul G X] [T1Space G] : T2Space X := by
  let f := fun x : X ↦ ((1 : G), x)
  have proper_f : IsProperMap f := by
    refine IsClosedEmbedding.isProperMap ⟨isEmbedding_prodMkRight 1, ?_⟩
    have : range f = ({1} ×ˢ univ) := by simp [f, Set.singleton_prod]
    rw [this]
    exact isClosed_singleton.prod isClosed_univ
  rw [t2_iff_isClosed_diagonal]
  let g := fun gx : G × X ↦ (gx.1 • gx.2, gx.2)
  have proper_g : IsProperMap g := (properSMul_iff G X).1 h_proper
  have : g ∘ f = Function.diag := by ext x <;> simp [f, g]
  have range_gf : range (g ∘ f) = diagonal X := by simp [this]
  rw [← range_gf]
  exact (proper_g.comp proper_f).isClosed_range

/-- If two groups `H` and `G` act on a topological space `X` such that `G` acts properly and
there exists a group homomorphism `H → G` which is a closed embedding compatible with the actions,
then `H` also acts properly on `X`. -/
@[to_additive /-- If two groups `H` and `G` act on a topological space `X` such that `G` acts
properly and there exists a group homomorphism `H → G` which is a closed embedding compatible with
the actions, then `H` also acts properly on `X`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant00b3c5263148ef234909817ac1574b7aea68e119d7235fd6bb6a94ddfd9cfcfd.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47fd39ea3d4f5931c87219cb28766b65076f3078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
