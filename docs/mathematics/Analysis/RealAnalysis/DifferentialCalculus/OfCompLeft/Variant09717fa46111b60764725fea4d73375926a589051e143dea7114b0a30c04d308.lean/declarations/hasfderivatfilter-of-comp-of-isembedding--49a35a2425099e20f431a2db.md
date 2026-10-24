# HasFDerivAtFilter.of_comp_of_isEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d699dae6-38ba-339d-0772-89b1ad5b0dca",
  "kind": "theorem",
  "lexical_name": "HasFDerivAtFilter.of_comp_of_isEmbedding",
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
  "slug": "hasfderivatfilter-of-comp-of-isembedding--49a35a2425099e20f431a2db",
  "source": {
    "blob": "c86de8e90623337b7803c5abfd7bcab401e46e34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49a35a2425099e20f431a2db1d47802ea8d585605b8a257a8c290e2e126327c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d699dae6-38ba-339d-0772-89b1ad5b0dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivAtFilter.of_comp_of_isEmbedding
    (hg : Tendsto (Prod.map g g) lE lF) (hf : HasFDerivAtFilter f f' lF)
    (hf' : Topology.IsEmbedding f') (hh : HasFDerivAtFilter h (f' ∘L g') lE)
    (hcomp : (Prod.map (f ∘ g) (f ∘ g)) =ᶠ[lE] Prod.map h h) :
    HasFDerivAtFilter g g' lE := by
  apply of_comp_aux (f := f) (f' := f') <;> try assumption
  refine f'.isThetaTVS_comp hf'.isInducing |>.symm.isBigOTVS.congr_right ?_
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant09717fa46111b60764725fea4d73375926a589051e143dea7114b0a30c04d308.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c86de8e90623337b7803c5abfd7bcab401e46e34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
