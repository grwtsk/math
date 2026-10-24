# finiteDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64d9b7237f9635428d96473975dc35e8de7b41e1661cacfa8c84f93b265b1f76",
  "kind": "def",
  "lexical_name": "finiteDensity",
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
  "slug": "finitedensity--a52848ba45605cd1a66e88f7",
  "source": {
    "blob": "69d81649555963f3180ec16685c79bcef66bc895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant54dc6a6c9afacc45e7f4ad049706f3127ae55abbd967e4260b880e7e6ab91611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a52848ba45605cd1a66e88f753ff726e60b83d06276b65ec82587a232932ceb2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant54dc6a6c9afacc45e7f4ad049706f3127ae55abbd967e4260b880e7e6ab91611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64d9b7237f9635428d96473975dc35e8de7b41e1661cacfa8c84f93b265b1f76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def finiteDensity (A : ℝ) (p : ℝ × ℝ) : ℝ :=
  if p.2 ≤ Real.exp p.1 then
    shiftedActualChebyshev p.2 * literalXiWeight p.1 p.2 *
      deriv (deriv (cesaroWeight A)) p.1 else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant54dc6a6c9afacc45e7f4ad049706f3127ae55abbd967e4260b880e7e6ab91611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant54dc6a6c9afacc45e7f4ad049706f3127ae55abbd967e4260b880e7e6ab91611.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69d81649555963f3180ec16685c79bcef66bc895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
