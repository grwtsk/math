# algebraMap_eq_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8047e6528b21f30cbf65849dca0d5a7a836fc76e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98b70d20-be72-6d64-80bc-f84daeb8d3f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f085dd60-254a-034f-a5b6-cd7b31505ed2",
  "kind": "theorem",
  "lexical_name": "algebraMap_eq_of_mem",
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
  "slug": "algebramap-eq-of-mem--4fd343d97ce4f9476542921b",
  "source": {
    "blob": "8047e6528b21f30cbf65849dca0d5a7a836fc76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 462,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fd343d97ce4f9476542921bd932bd7ebf6a5350e20c7992156e33e4ba92fd64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f085dd60-254a-034f-a5b6-cd7b31505ed2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_eq_of_mem {a : A} {z : ℂ} (h : z ∈ σ a) : algebraMap ℂ A z = a := by
  rwa [mem_iff, hA, Classical.not_not, sub_eq_zero] at h
#align spectrum.algebra_map_eq_of_mem spectrum.algebraMap_eq_of_mem

/-- **Gelfand-Mazur theorem**: For a complex Banach division algebra, the natural `algebraMap ℂ A`
is an algebra isomorphism whose inverse is given by selecting the (unique) element of
`spectrum ℂ a`. In addition, `algebraMap_isometry` guarantees this map is an isometry.

Note: because `NormedDivisionRing` requires the field `norm_mul' : ∀ a b, ‖a * b‖ = ‖a‖ * ‖b‖`, we
don't use this type class and instead opt for a `NormedRing` in which the nonzero elements are
precisely the units. This allows for the application of this isomorphism in broader contexts, e.g.,
to the quotient of a complex Banach algebra by a maximal ideal. In the case when `A` is actually a
`NormedDivisionRing`, one may fill in the argument `hA` with the lemma `isUnit_iff_ne_zero`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8047e6528b21f30cbf65849dca0d5a7a836fc76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
