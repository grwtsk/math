# positivePrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cc0ff5e-1043-9b38-fb88-08d8f40c783a",
  "kind": "theorem",
  "lexical_name": "positivePrimitive_hasDerivAt",
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
  "slug": "positiveprimitive-hasderivat--0aa6e3e35badae606dfa1f24",
  "source": {
    "blob": "01bb81d52966b56763f1266a94fc2dfc414f1eb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptpeer01/Variant1224fb534e58ba1442d13eec7935393f6a7407dc52f9b02eeb53075f7a40df47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aa6e3e35badae606dfa1f240d4c794afa11cc55aa131a26a9179e7223099ef6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptpeer01/Variant1224fb534e58ba1442d13eec7935393f6a7407dc52f9b02eeb53075f7a40df47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cc0ff5e-1043-9b38-fb88-08d8f40c783a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePrimitive_hasDerivAt (A t : ℝ) :
    HasDerivAt (positivePrimitive A) (positivePrimitiveFirst A t) t := by
  have h0 := (overlapPolynomial0_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have h1 := (overlapPolynomial1_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have h2 := (overlapPolynomial2_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have he := ((hasDerivAt_id t).div_const 2).exp
  have hd := (he.mul (((h2.div_const (A^2)).sub (h1.div_const A)).add
    (h0.div_const 4))).div_const (sourceNormalization A)
  apply hd.congr_deriv
  dsimp [positivePrimitiveFirst]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptpeer01/Variant1224fb534e58ba1442d13eec7935393f6a7407dc52f9b02eeb53075f7a40df47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttemptpeer01/Variant1224fb534e58ba1442d13eec7935393f6a7407dc52f9b02eeb53075f7a40df47.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01bb81d52966b56763f1266a94fc2dfc414f1eb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
