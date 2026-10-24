# endpoint_leading_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:770629c2-3267-6952-8429-9f8f51428592",
  "kind": "theorem",
  "lexical_name": "endpoint_leading_convolution",
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
  "slug": "endpoint-leading-convolution--44cfa3c77650bbab8510689d",
  "source": {
    "blob": "9b5a382a0c6a7e11db60eba1a4df955ccccd5d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variante84c11bf974aca4d0b36c8c6166436fd4b296a14bbcf945dc51b2b44cc8d84cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44cfa3c77650bbab8510689deedef996ac73d8f218e946e78b9bc3cd0aeab125",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variante84c11bf974aca4d0b36c8c6166436fd4b296a14bbcf945dc51b2b44cc8d84cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:770629c2-3267-6952-8429-9f8f51428592`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_leading_convolution (y : ℝ) :
    (∫ s in 0..y,endpointLeadingSource s*endpointLeadingSource (y-s))=
      endpointLeadingCorrelation y := by
  have he : (fun s : ℝ => endpointLeadingSource s*endpointLeadingSource (y-s))=
    fun s => (36864*y^2-768*y^4)*s^2+(-73728*y+3072*y^3)*s^3+
      (36864-5376*y^2+16*y^4)*s^4+(4608*y-64*y^3)*s^5+
      (-1536+96*y^2)*s^6-64*y*s^7+16*s^8 := by
    funext s
    dsimp [endpointLeadingSource]
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add,intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul,integral_pow]
  dsimp [endpointLeadingCorrelation]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variante84c11bf974aca4d0b36c8c6166436fd4b296a14bbcf945dc51b2b44cc8d84cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointProfileAttempt02/Variante84c11bf974aca4d0b36c8c6166436fd4b296a14bbcf945dc51b2b44cc8d84cc.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b5a382a0c6a7e11db60eba1a4df955ccccd5d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
