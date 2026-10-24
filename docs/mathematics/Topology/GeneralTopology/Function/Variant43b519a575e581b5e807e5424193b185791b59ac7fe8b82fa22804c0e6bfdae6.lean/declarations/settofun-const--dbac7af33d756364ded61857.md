# setToFun_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a17529ef-d691-5934-0ae5-02befab25466",
  "kind": "theorem",
  "lexical_name": "setToFun_const",
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
  "slug": "settofun-const--dbac7af33d756364ded61857",
  "source": {
    "blob": "c5f0e17f995d604b6a8a1ce27317904b0412fcb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbac7af33d756364ded618577fbbc73f66a5da8743e72bfb83ee69e1944e472f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a17529ef-d691-5934-0ae5-02befab25466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToFun_const [CompleteSpace F] [IsFiniteMeasure μ]
    (hT : DominatedFinMeasAdditive μ T C) (x : E) :
    (setToFun μ T hT fun _ => x) = T univ x := by
  have : (fun _ : α => x) = Set.indicator univ fun _ => x := (indicator_univ _).symm
  rw [this]
  exact setToFun_indicator_const hT MeasurableSet.univ (measure_ne_top _ _) x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f0e17f995d604b6a8a1ce27317904b0412fcb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
