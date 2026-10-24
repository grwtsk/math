# kernel_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0918dd3-0245-1eb1-cec2-d2c50d7e7921",
  "kind": "theorem",
  "lexical_name": "kernel_hasDerivAt",
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
  "slug": "kernel-hasderivat--4152f9b2bc382affa41b0598",
  "source": {
    "blob": "4dc0ba7055dcc977414522c836caee5f7e6afd27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4152f9b2bc382affa41b059874783bba583dec36d3e8ac6382fe3e5b48731af2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0918dd3-0245-1eb1-cec2-d2c50d7e7921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem kernel_hasDerivAt (t : ℝ) (z : ℂ) :
    HasDerivAt (fun z : ℂ => (profile t : ℂ) *
      Complex.exp (-z * (t : ℂ)))
      (-(t : ℂ) * (profile t : ℂ) *
        Complex.exp (-z * (t : ℂ))) z := by
  have hh := (((hasDerivAt_id z).neg.mul_const (t : ℂ)).cexp.const_mul
    (profile t : ℂ))
  convert hh using 1 <;> first | rfl | (simp only [Pi.neg_apply, id_eq]; ring)

/-- Genuine parameter differentiation retains the supplied actual full-area premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszQuadraticHolomorphy/Variantfd5d2ae9efb489fb4efe1ad5408aa23fed82e6c5a617f0e16d707016e04bbdc8.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dc0ba7055dcc977414522c836caee5f7e6afd27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
