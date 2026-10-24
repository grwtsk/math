# liminf_const_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:891d6d61-625a-5ddc-9470-7778bdeb1e56",
  "kind": "lemma",
  "lexical_name": "liminf_const_sub",
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
  "slug": "liminf-const-sub--df3aad01da7fe21973cbcfe1",
  "source": {
    "blob": "4fc8c6425179579e5b0134d0e211cbaeb3fe4978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 612,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df3aad01da7fe21973cbcfe1e588a9a5b9b791f5d6721e629c1d0d71fff8b2ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:891d6d61-625a-5ddc-9470-7778bdeb1e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liminf_const_sub (F : Filter ι) [NeBot F] [AddCommSemigroup R] [Sub R] [ContinuousSub R]
    [OrderedSub R] [AddLeftMono R] (f : ι → R) (c : R)
    (bdd_above : F.IsBoundedUnder (· ≤ ·) f) (cobdd : F.IsCoboundedUnder (· ≤ ·) f) :
    Filter.liminf (fun i ↦ c - f i) F = c - Filter.limsup f F :=
  (Antitone.map_limsSup_of_continuousAt (F := F.map f) (f := fun (x : R) ↦ c - x)
    (fun _ _ h ↦ tsub_le_tsub_left h c) (continuous_sub_left c).continuousAt bdd_above cobdd).symm

/-- `liminf (xᵢ - c) = (liminf xᵢ) - c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc8c6425179579e5b0134d0e211cbaeb3fe4978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
