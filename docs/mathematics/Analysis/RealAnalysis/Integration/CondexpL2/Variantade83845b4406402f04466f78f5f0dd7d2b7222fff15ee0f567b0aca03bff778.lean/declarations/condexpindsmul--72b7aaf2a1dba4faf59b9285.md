# condexpIndSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29330bf2f935034032f724dcefd8d60e4fbc8d6b28d974f326d300011d6c7876",
  "kind": "def",
  "lexical_name": "condexpIndSMul",
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
  "slug": "condexpindsmul--72b7aaf2a1dba4faf59b9285",
  "source": {
    "blob": "cdb4611be326cf2f44d9627da6bf554c3fe217fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 384,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72b7aaf2a1dba4faf59b9285bb282bba0186b293bf50d83f8dfd60bad2ec67ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29330bf2f935034032f724dcefd8d60e4fbc8d6b28d974f326d300011d6c7876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def condexpIndSMul (hm : m ≤ m0) (hs : MeasurableSet s) (hμs : μ s ≠ ∞) (x : G) :
    Lp G 2 μ :=
  (toSpanSingleton ℝ x).compLpL 2 μ (condexpL2 ℝ ℝ hm (indicatorConstLp 2 hs hμs (1 : ℝ)))
#align measure_theory.condexp_ind_smul MeasureTheory.condexpIndSMul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variantade83845b4406402f04466f78f5f0dd7d2b7222fff15ee0f567b0aca03bff778.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdb4611be326cf2f44d9627da6bf554c3fe217fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
