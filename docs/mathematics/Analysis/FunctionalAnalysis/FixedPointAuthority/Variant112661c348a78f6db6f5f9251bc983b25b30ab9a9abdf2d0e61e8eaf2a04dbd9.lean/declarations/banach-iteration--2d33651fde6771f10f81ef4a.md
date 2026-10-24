# banach_iteration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d88fd5c-e51c-b279-2647-74cbf85d5c81",
  "kind": "theorem",
  "lexical_name": "banach_iteration",
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
  "slug": "banach-iteration--2d33651fde6771f10f81ef4a",
  "source": {
    "blob": "23b9bc53368338245d157a1034b08ad99cbd4946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d33651fde6771f10f81ef4a725d617406f8bc15810f49aea2ed20f99ee76405",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d88fd5c-e51c-b279-2647-74cbf85d5c81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem banach_iteration (hf : ContractingWith K f) (x : α) :
    Tendsto (fun n ↦ f^[n] x) atTop (nhds (banachPoint hf)) :=
  hf.tendsto_iterate_fixedPoint x

end BanachExistence

section KnasterTarski

variable {α : Type u} [CompleteLattice α] (f : α →o α)

/-- The exact Mathlib complete-lattice structure on the fixed points of a
monotone endomap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23b9bc53368338245d157a1034b08ad99cbd4946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
