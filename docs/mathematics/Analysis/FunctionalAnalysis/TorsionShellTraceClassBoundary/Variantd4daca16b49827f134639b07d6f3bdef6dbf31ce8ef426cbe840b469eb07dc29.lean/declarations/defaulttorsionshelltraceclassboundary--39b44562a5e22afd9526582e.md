# defaultTorsionShellTraceClassBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:304497be8899b89a428d704d67e87f5f56c87e8c5aa490b35cd1f7473d6cf2de",
  "kind": "def",
  "lexical_name": "defaultTorsionShellTraceClassBoundary",
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
  "slug": "defaulttorsionshelltraceclassboundary--39b44562a5e22afd9526582e",
  "source": {
    "blob": "130eb860889e69015485de56c66ebafeebd47f1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 115,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39b44562a5e22afd9526582ee7f56441958d68dd5033cb62e00dae9e79eeaf2d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:304497be8899b89a428d704d67e87f5f56c87e8c5aa490b35cd1f7473d6cf2de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultTorsionShellTraceClassBoundary : TorsionShellTraceClassBoundary :=
  { torsionShellsOrdered := true
    finiteRankShells := false
    factorialDecayDeclared := false
    shellGrowthControlled := false
    traceNormSummable := false
    connesPositiveBoundaryChecked := false
    taoHeatflowNegativeBoundaryChecked := false
    everyShellBoundaryRouted := false
    noUnpairedShellResidue := false
    traceClassAdmitted := false
    schattenDeterminantClassAdmitted := false
    determinantClassTransferAllowed := false
    hilbertPolyaAuthority := false
    traceClassAdmitted_of_summable_shells := by
      intro _hOrder hFinite _hDecay _hGrowth _hSummable _hConnes _hTao _hRouted _hNoResidue
      cases hFinite
    determinantClassTransfer_of_trace_class := by
      intro hTrace
      cases hTrace
    ordering_alone_does_not_admit_trace_class := by
      intro _hOrder _hSummable
      rfl
    no_hilbert_polya_from_trace_class_boundary_alone := rfl }

/-- Completed trace-class posture: shell ordering has become a finite-rank,
factorially damped, summable shell expansion checked against Connes/Tao gates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `130eb860889e69015485de56c66ebafeebd47f1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
