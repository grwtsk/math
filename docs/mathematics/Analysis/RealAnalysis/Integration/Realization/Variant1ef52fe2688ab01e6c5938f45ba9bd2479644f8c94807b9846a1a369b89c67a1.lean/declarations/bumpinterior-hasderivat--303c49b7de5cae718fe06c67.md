# bumpInterior_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a15226e2-be34-6ae0-5d54-a7741467933e",
  "kind": "theorem",
  "lexical_name": "bumpInterior_hasDerivAt",
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
  "slug": "bumpinterior-hasderivat--303c49b7de5cae718fe06c67",
  "source": {
    "blob": "23de5ccd1216a98148d99dcea23eb55e212c545d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:303c49b7de5cae718fe06c677190cc1904d06a39ace1eb367e60a81d6cf41d1a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a15226e2-be34-6ae0-5d54-a7741467933e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpInterior_hasDerivAt (A x : ℝ) :
    HasDerivAt (bumpInterior A) (firstInterior A x) x := by
  have h := (((hasDerivAt_const x (1 : ℝ)).sub
    (((hasDerivAt_id x).div_const A).pow 2)).pow 4).div_const (Real.sqrt A)
  convert h using 1 <;> try rfl
  dsimp [firstInterior]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- Exact second differentiation of the source polynomial, with its scaling retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variant1ef52fe2688ab01e6c5938f45ba9bd2479644f8c94807b9846a1a369b89c67a1.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23de5ccd1216a98148d99dcea23eb55e212c545d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
