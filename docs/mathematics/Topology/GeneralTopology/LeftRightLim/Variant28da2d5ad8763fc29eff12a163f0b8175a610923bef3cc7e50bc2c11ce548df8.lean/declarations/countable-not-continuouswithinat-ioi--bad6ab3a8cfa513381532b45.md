# countable_not_continuousWithinAt_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a833475f-5fd9-563c-070c-e0993624dfe7",
  "kind": "theorem",
  "lexical_name": "countable_not_continuousWithinAt_Ioi",
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
  "slug": "countable-not-continuouswithinat-ioi--bad6ab3a8cfa513381532b45",
  "source": {
    "blob": "631b854bb866fde1fcaf35837ad32d26c2a36d57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bad6ab3a8cfa513381532b452a01c83a97185caa18478b4540c850c352e97f4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a833475f-5fd9-563c-070c-e0993624dfe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_not_continuousWithinAt_Ioi [SecondCountableTopology β] :
    Set.Countable { x | ¬ContinuousWithinAt f (Ioi x) x } := by
  apply (countable_image_lt_image_Ioi f).mono
  rintro x (hx : ¬ContinuousWithinAt f (Ioi x) x)
  dsimp
  contrapose! hx
  refine tendsto_order.2 ⟨fun m hm => ?_, fun u hu => ?_⟩
  · filter_upwards [@self_mem_nhdsWithin _ _ x (Ioi x)] with y hy using hm.trans_le
      (hf (le_of_lt hy))
  rcases hx u hu with ⟨v, xv, fvu⟩
  have : Ioo x v ∈ 𝓝[>] x := Ioo_mem_nhdsGT xv
  filter_upwards [this] with y hy
  apply (hf hy.2.le).trans_lt fvu

/-- In a second countable space, the set of points where a monotone function is not left-continuous
is at most countable. Superseded by `countable_not_continuousAt` which gives the two-sided
version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant28da2d5ad8763fc29eff12a163f0b8175a610923bef3cc7e50bc2c11ce548df8.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `631b854bb866fde1fcaf35837ad32d26c2a36d57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
