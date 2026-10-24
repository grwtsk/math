# _root_.PseudoEMetricSpace.hausdorff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63c74b8647df35bd6023319f949cd223b0b8058627d01434b75fa88b7e2e25cf",
  "kind": "abbrev",
  "lexical_name": "_root_.PseudoEMetricSpace.hausdorff",
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
  "slug": "root-pseudoemetricspace-hausdorff--1fd203d0913dce1a87352503",
  "source": {
    "blob": "cf5c68b44e2e9c91d1339216ca0e9113c69bb3a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 65,
    "path": "GRWTSK/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fd203d0913dce1a8735250314e0af9ec687c1fb11f7f3d43f9bcd5f0a09a2d2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63c74b8647df35bd6023319f949cd223b0b8058627d01434b75fa88b7e2e25cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev _root_.PseudoEMetricSpace.hausdorff : PseudoEMetricSpace (Set α) where
  edist s t := hausdorffEDist s t
  edist_self _ := hausdorffEDist_self
  edist_comm _ _ := hausdorffEDist_comm
  edist_triangle _ _ _ := hausdorffEDist_triangle
  toUniformSpace := .hausdorff α
  uniformity_edist := by
    refine le_antisymm
      (le_iInf₂ fun ε hε => Filter.le_principal_iff.mpr ?_)
      (uniformity_basis_edist.lift' monotone_hausdorffEntourage |>.ge_iff.mpr fun ε hε =>
        Filter.mem_iInf_of_mem ε <| Filter.mem_iInf_of_mem hε fun _ =>
        mem_hausdorffEntourage_of_hausdorffEDist_lt)
    obtain ⟨δ, hδ, hδε⟩ := exists_between hε
    filter_upwards [Filter.mem_lift' (uniformity_basis_edist_le.mem_of_mem hδ)]
      with _ h using hδε.trans_le' <| hausdorffEDist_le_of_mem_hausdorffEntourage h

end Metric

namespace TopologicalSpace

variable {α β : Type*} [EMetricSpace α] [EMetricSpace β] {s : Set α}

namespace Closeds

/-- In emetric spaces, the Hausdorff edistance defines an emetric space structure
on the type of closed subsets -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Closeds/Varianta36e6626420eef4a97a72878d52c5dc41a2eb561a3e0cb499d7b51270777bd33.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf5c68b44e2e9c91d1339216ca0e9113c69bb3a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
