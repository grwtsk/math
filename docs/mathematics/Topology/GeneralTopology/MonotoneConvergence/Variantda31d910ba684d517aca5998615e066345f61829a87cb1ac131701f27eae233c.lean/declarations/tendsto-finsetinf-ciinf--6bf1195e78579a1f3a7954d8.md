# tendsto_finsetInf_ciInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23356361960172d5acd9104d949af64312da7c71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da31d910ba684d517aca5998615e066345f61829a87cb1ac131701f27eae233c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c0c1536-e77e-7c65-e172-d2249def01df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9b03185-ee46-2dda-b4e8-a2eb2279eb85",
  "kind": "theorem",
  "lexical_name": "tendsto_finsetInf_ciInf",
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
  "slug": "tendsto-finsetinf-ciinf--6bf1195e78579a1f3a7954d8",
  "source": {
    "blob": "23356361960172d5acd9104d949af64312da7c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variantda31d910ba684d517aca5998615e066345f61829a87cb1ac131701f27eae233c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bf1195e78579a1f3a7954d8da2fed901273df02761061e86d63f5359a2ab647",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneConvergence/Variantda31d910ba684d517aca5998615e066345f61829a87cb1ac131701f27eae233c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9b03185-ee46-2dda-b4e8-a2eb2279eb85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_finsetInf_ciInf {ι} [ConditionallyCompleteLattice α] [OrderTop α]
    [InfConvergenceClass α] [Nonempty ι] {a : ι → α} (ha : BddBelow (range a)) :
    Tendsto (fun F : Finset ι => F.inf a) atTop (𝓝 (⨅ i, a i)) :=
  tendsto_finsetSup_ciSup (α := αᵒᵈ) ha

end ConditionallyCompleteLattice

end CiInf

section iSup

variable [CompleteLattice α] [SupConvergenceClass α] {f : ι → α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneConvergence/Variantda31d910ba684d517aca5998615e066345f61829a87cb1ac131701f27eae233c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variantda31d910ba684d517aca5998615e066345f61829a87cb1ac131701f27eae233c.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23356361960172d5acd9104d949af64312da7c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
