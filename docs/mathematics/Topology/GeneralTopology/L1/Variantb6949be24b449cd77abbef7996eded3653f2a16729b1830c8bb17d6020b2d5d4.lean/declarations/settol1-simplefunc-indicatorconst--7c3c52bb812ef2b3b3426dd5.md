# setToL1_simpleFunc_indicatorConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b90512a-aed1-964d-6a83-ec438d3817f3",
  "kind": "theorem",
  "lexical_name": "setToL1_simpleFunc_indicatorConst",
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
  "slug": "settol1-simplefunc-indicatorconst--7c3c52bb812ef2b3b3426dd5",
  "source": {
    "blob": "386f67fe88db074ae423f4776e95281b1363a2b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/L1/Variantb6949be24b449cd77abbef7996eded3653f2a16729b1830c8bb17d6020b2d5d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c3c52bb812ef2b3b3426dd50e654c69a147dc331a21df1923e6f75544a74964",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/L1/Variantb6949be24b449cd77abbef7996eded3653f2a16729b1830c8bb17d6020b2d5d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b90512a-aed1-964d-6a83-ec438d3817f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToL1_simpleFunc_indicatorConst (hT : DominatedFinMeasAdditive μ T C) {s : Set α}
    (hs : MeasurableSet s) (hμs : μ s < ∞) (x : E) :
    setToL1 hT (simpleFunc.indicatorConst 1 hs hμs.ne x) = T s x := by
  rw [setToL1_eq_setToL1SCLM]
  exact setToL1S_indicatorConst (fun s => hT.eq_zero_of_measure_zero) hT.1 hs hμs x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/L1/Variantb6949be24b449cd77abbef7996eded3653f2a16729b1830c8bb17d6020b2d5d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/L1/Variantb6949be24b449cd77abbef7996eded3653f2a16729b1830c8bb17d6020b2d5d4.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386f67fe88db074ae423f4776e95281b1363a2b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
