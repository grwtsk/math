# criticalMangoldtWork_flux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4faa93d7-731b-3c75-dcaf-645e87e28173",
  "kind": "theorem",
  "lexical_name": "criticalMangoldtWork_flux",
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
  "slug": "criticalmangoldtwork-flux--78cd5a0fab9f66295793c578",
  "source": {
    "blob": "3e3ca9e06386e9c12eb9bbe9f7da330c6ea365fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMangoldtWorkScale/Variant3d2922798d1235ec4f12d1095a09b03075ace7f83c8d1b50a3cb2a54a02f5fad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78cd5a0fab9f66295793c57881d3fa175487dba4b186c7aa6aeed2dd2a73419c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMangoldtWorkScale/Variant3d2922798d1235ec4f12d1095a09b03075ace7f83c8d1b50a3cb2a54a02f5fad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4faa93d7-731b-3c75-dcaf-645e87e28173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMangoldtWork_flux {a b : ℝ} (ha : 1 < a) (hb : 1 < b) :
    (∫ A in a..b, mangoldtWorkScaleDerivative A) =
      criticalMangoldtWork b - criticalMangoldtWork a :=
  intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun _ hA => criticalMangoldtWork_hasDerivAt (uIcc_subset_scaleDomain ha hb hA))
    (mangoldtWorkScaleDerivative_intervalIntegrable ha hb)

/-- Splitting the actual work slope retains the sign of the complete arithmetic derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMangoldtWorkScale/Variant3d2922798d1235ec4f12d1095a09b03075ace7f83c8d1b50a3cb2a54a02f5fad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMangoldtWorkScale/Variant3d2922798d1235ec4f12d1095a09b03075ace7f83c8d1b50a3cb2a54a02f5fad.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3ca9e06386e9c12eb9bbe9f7da330c6ea365fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
