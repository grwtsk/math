# chartAt_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f73560526c32ca7ceb4c68d3b7b39da3540080d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 640,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91bb23fb-7ef7-2364-d53e-40f3dee3924c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fb17ef3-f85b-745e-6b73-5a2b2aab5f0a",
  "kind": "theorem",
  "lexical_name": "chartAt_comp",
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
  "slug": "chartat-comp--058b0ac916f856fe6f369be8",
  "source": {
    "blob": "f73560526c32ca7ceb4c68d3b7b39da3540080d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 640,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:058b0ac916f856fe6f369be8e85361fa7e4aaffd1f6004e67bccef99127295ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fb17ef3-f85b-745e-6b73-5a2b2aab5f0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chartAt_comp (H : Type*) [TopologicalSpace H] (H' : Type*) [TopologicalSpace H']
    {M : Type*} [TopologicalSpace M] [ChartedSpace H H'] [ChartedSpace H' M] (x : M) :
    (letI := ChartedSpace.comp H H' M; chartAt H x) = chartAt H' x ≫ₕ chartAt H (chartAt H' x x) :=
  rfl

end

library_note "Manifold type tags" /-- For technical reasons we introduce two type tags:

* `ModelProd H H'` is the same as `H × H'`;
* `ModelPi H` is the same as `∀ i, H i`, where `H : ι → Type*` and `ι` is a finite type.

In both cases the reason is the same, so we explain it only in the case of the product. A charted
space `M` with model `H` is a set of local charts from `M` to `H` covering the space. Every space is
registered as a charted space over itself, using the only chart `id`, in `chartedSpaceSelf`. You
can also define a product of charted space `M` and `M'` (with model space `H × H'`) by taking the
products of the charts. Now, on `H × H'`, there are two charted space structures with model space
`H × H'` itself, the one coming from `chartedSpaceSelf`, and the one coming from the product of
the two `chartedSpaceSelf` on each component. They are equal, but not defeq (because the product
of `id` and `id` is not defeq to `id`), which is bad as we know. This expedient of renaming `H × H'`
solves this problem. -/


/-- Same thing as `H × H'`. We introduce it for technical reasons,
see note [Manifold type tags]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant3e7ac71f3497a0fa6bc9c138fdb1a8de157de8cfdca82afc012fffa712577f77.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f73560526c32ca7ceb4c68d3b7b39da3540080d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
