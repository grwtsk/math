# PolarTraceSystem.compensationDefect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec20ce8153318d2f6eaf5ed2a92f267bacb18c5391a968e9289d664ffd9202ae",
  "kind": "def",
  "lexical_name": "PolarTraceSystem.compensationDefect",
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
  "slug": "polartracesystem-compensationdefect--946c8328df743b348b9b8af3",
  "source": {
    "blob": "a51ab7aefb96949a954f0a927f8375f5ab01ac7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 15,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CompensationDefect/Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:946c8328df743b348b9b8af394c4faa7edb74a53d0839884d543280fccabd5cb",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CompensationDefect/Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec20ce8153318d2f6eaf5ed2a92f267bacb18c5391a968e9289d664ffd9202ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def PolarTraceSystem.compensationDefect
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (arc : Arc graph) :
    HilbertEnd Hilbert :=
  operatorPullback
      (system.transport arc)
      (system.defect arc.head) -
    system.defect arc.tail

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CompensationDefect/Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CompensationDefect/Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a51ab7aefb96949a954f0a927f8375f5ab01ac7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
