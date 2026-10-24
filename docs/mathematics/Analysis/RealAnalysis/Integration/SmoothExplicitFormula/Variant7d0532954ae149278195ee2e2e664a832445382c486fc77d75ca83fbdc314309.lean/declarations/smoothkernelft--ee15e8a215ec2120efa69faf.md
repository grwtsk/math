# smoothKernelFT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71968614b389dd7a6fc186282e21d93390ad10c30200783004b4bd194d53bb08",
  "kind": "def",
  "lexical_name": "smoothKernelFT",
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
  "slug": "smoothkernelft--ee15e8a215ec2120efa69faf",
  "source": {
    "blob": "b425f973f9833ebb51b75823e783d29be23875f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee15e8a215ec2120efa69faf9f43b93947ba4a15b4043703b1421df6465d130e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71968614b389dd7a6fc186282e21d93390ad10c30200783004b4bd194d53bb08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smoothKernelFT (A ε : ℝ) (hε : 0 < ε) (w : ℂ) : ℂ :=
  ∫ t : ℝ, smoothKernel A ε hε t * Complex.exp (Complex.I * w * (t : ℂ))

/-- The smooth autocorrelation transform is an ordinary complex square at every
complex argument.  No modulus square is substituted off the real Fourier axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant7d0532954ae149278195ee2e2e664a832445382c486fc77d75ca83fbdc314309.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b425f973f9833ebb51b75823e783d29be23875f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
