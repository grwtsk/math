# traceFormulaEqualityCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f4486c712d04022472c6736c3e6a41a8a9348ebd62ac5dcfd72f578e042827b",
  "kind": "def",
  "lexical_name": "traceFormulaEqualityCertificate",
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
  "slug": "traceformulaequalitycertificate--f8727c9ea4cd6ab077330fb7",
  "source": {
    "blob": "6dd4bbf0c511ed77b5da7fbcf40f6d0976a6b20f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 323,
    "path": "GRWTSK/Analysis/TraceFormula/Variante67ee34a386821cc06f9e175443d1d794865f2e5a1d27c490fa9798c11128340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8727c9ea4cd6ab077330fb7f28d53ff2935011bb9502d25b205201b58f6b0be",
  "verification": {
    "reference": "docs/verification/Analysis/TraceFormula/Variante67ee34a386821cc06f9e175443d1d794865f2e5a1d27c490fa9798c11128340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f4486c712d04022472c6736c3e6a41a8a9348ebd62ac5dcfd72f578e042827b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def traceFormulaEqualityCertificate
    (A : TraceFormulaEqualityAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.traceFormula
  label := "trace-formula equality certificate"
  publicHash := 0
  sound := A.equalitySound
  soundProof := trace_formula_equality_authorized A

/-- Convert a positivity consequence authority into an analytic certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TraceFormula/Variante67ee34a386821cc06f9e175443d1d794865f2e5a1d27c490fa9798c11128340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TraceFormula/Variante67ee34a386821cc06f9e175443d1d794865f2e5a1d27c490fa9798c11128340.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dd4bbf0c511ed77b5da7fbcf40f6d0976a6b20f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
