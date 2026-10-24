# Monotone.map_liminf_of_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae868a0a-30c4-d69c-04c3-b5f9d3e3fe3f",
  "kind": "theorem",
  "lexical_name": "Monotone.map_liminf_of_continuousAt",
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
  "slug": "monotone-map-liminf-of-continuousat--d817e19afd2b8465e12eeafb",
  "source": {
    "blob": "4fc8c6425179579e5b0134d0e211cbaeb3fe4978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 407,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d817e19afd2b8465e12eeafb1a40516bd934367f495d6bd5425e17df019f16b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae868a0a-30c4-d69c-04c3-b5f9d3e3fe3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.map_liminf_of_continuousAt {f : R → S} (f_incr : Monotone f) (a : ι → R)
    (f_cont : ContinuousAt f (F.liminf a))
    (cobdd : F.IsCoboundedUnder (· ≥ ·) a := by isBoundedDefault)
    (bdd_below : F.IsBoundedUnder (· ≥ ·) a := by isBoundedDefault) :
    f (F.liminf a) = F.liminf (f ∘ a) :=
  f_incr.map_limsInf_of_continuousAt f_cont cobdd bdd_below

end Monotone

section LiminfLimsupAdd

variable [AddCommGroup α] [ConditionallyCompleteLinearOrder α] [DenselyOrdered α]
  [CovariantClass α α (fun a b ↦ a + b) fun x1 x2 ↦ x1 ≤ x2]
  {f : Filter ι} [f.NeBot] {u v : ι → α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantdd988370846eb177cdbf0b6cf96fc8fb9019b162e229c939e04133ead865afcf.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc8c6425179579e5b0134d0e211cbaeb3fe4978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
