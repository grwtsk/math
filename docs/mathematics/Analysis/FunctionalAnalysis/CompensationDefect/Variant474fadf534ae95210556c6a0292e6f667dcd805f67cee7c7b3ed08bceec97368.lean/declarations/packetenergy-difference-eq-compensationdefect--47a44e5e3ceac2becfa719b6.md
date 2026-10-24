# packetEnergy_difference_eq_compensationDefect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a51ab7aefb96949a954f0a927f8375f5ab01ac7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:823efd11-ae14-9a2a-6c00-ba099b9fff9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0da377b7-e600-4643-ef3d-336a80e0ead5",
  "kind": "theorem",
  "lexical_name": "packetEnergy_difference_eq_compensationDefect",
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
  "slug": "packetenergy-difference-eq-compensationdefect--47a44e5e3ceac2becfa719b6",
  "source": {
    "blob": "a51ab7aefb96949a954f0a927f8375f5ab01ac7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 32,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CompensationDefect/Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47a44e5e3ceac2becfa719b6b9e8a64efa0354c780a36d6013c10ce563918ec7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CompensationDefect/Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da377b7-e600-4643-ef3d-336a80e0ead5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packetEnergy_difference_eq_compensationDefect
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (arc : Arc graph)
    (test : Test)
    (safe : cut.safeArc arc = true) :
    system.packetEnergy arc.head test -
        system.packetEnergy arc.tail test =
      system.packet.energy arc.tail
        (system.compensationDefect arc)
        test := by
  unfold PolarTraceSystem.packetEnergy
  rw [system.packetCovariant
    arc (system.defect arc.head) test safe]
  exact
    (system.packet.energy_sub
      arc.tail
      (operatorPullback
        (system.transport arc)
        (system.defect arc.head))
      (system.defect arc.tail)
      test).symm

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CompensationDefect/Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CompensationDefect/Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a51ab7aefb96949a954f0a927f8375f5ab01ac7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
