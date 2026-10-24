# regularTorsionShell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbda4d65f6b4238a9a68e442aabd4fd8e6f6d1a07cc63fde50873b663db3fa62",
  "kind": "def",
  "lexical_name": "regularTorsionShell",
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
  "slug": "regulartorsionshell--1c72f4613ea3e487d8dfc875",
  "source": {
    "blob": "242eaeb24735468a976907abdc36e178bc35f477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 40,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd1de8bbc3563f9dbce938d9bad5a45c8528a9e0a8bbb51630824b6fbd86c8a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c72f4613ea3e487d8dfc87571484c705bac9882bed0ccf008cfdf18664c2361",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd1de8bbc3563f9dbce938d9bad5a45c8528a9e0a8bbb51630824b6fbd86c8a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbda4d65f6b4238a9a68e442aabd4fd8e6f6d1a07cc63fde50873b663db3fa62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def regularTorsionShell (shellId phaseId torsionClassId : String)
    (orderedIndex : Nat) : TorsionShell :=
  { shellId := shellId
    phaseId := phaseId
    torsionClassId := torsionClassId
    orderedIndex := orderedIndex
    finiteRankWitness := true
    singularPhase := false
    connesPositiveRoute := true
    taoNegativeRoute := false
    unpairedResidue := false
    traceNormBounded := true }

/-- Singular shell routed through the Tao heatflow negative/decay boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd1de8bbc3563f9dbce938d9bad5a45c8528a9e0a8bbb51630824b6fbd86c8a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd1de8bbc3563f9dbce938d9bad5a45c8528a9e0a8bbb51630824b6fbd86c8a3c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242eaeb24735468a976907abdc36e178bc35f477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
