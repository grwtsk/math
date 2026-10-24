# comp_holderWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dd43c9b7f42d1b33b0fa0f36d15e57ffa2a888d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af7ca7a4-3e97-00dc-09d2-17344ddbacaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ddc7572-a667-14ff-bb77-643a6efe3993",
  "kind": "theorem",
  "lexical_name": "comp_holderWith",
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
  "slug": "comp-holderwith--ab41dde72b2789109b0750dc",
  "source": {
    "blob": "6dd43c9b7f42d1b33b0fa0f36d15e57ffa2a888d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 129,
    "path": "GRWTSK/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab41dde72b2789109b0750dcc9258d7854c90833024c97c05c07334cd02b2adc",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ddc7572-a667-14ff-bb77-643a6efe3993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_holderWith {Cg rg : ℝ≥0} {g : Y → Z} {t : Set Y} (hg : HolderOnWith Cg rg g t)
    {Cf rf : ℝ≥0} {f : X → Y} (hf : HolderWith Cf rf f) (ht : ∀ x, f x ∈ t) :
    HolderWith (Cg * NNReal.rpow Cf rg) (rg * rf) (g ∘ f) :=
  holderOnWith_univ.mp <| hg.comp (hf.holderOnWith univ) fun x _ => ht x
#align holder_on_with.comp_holder_with HolderOnWith.comp_holderWith

/-- A Hölder continuous function is uniformly continuous -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dd43c9b7f42d1b33b0fa0f36d15e57ffa2a888d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
