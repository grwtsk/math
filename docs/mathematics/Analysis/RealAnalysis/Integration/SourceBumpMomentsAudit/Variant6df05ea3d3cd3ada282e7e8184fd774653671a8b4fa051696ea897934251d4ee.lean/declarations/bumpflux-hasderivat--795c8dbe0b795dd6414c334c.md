# bumpFlux_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e6f50c61cff7fd60e8ffc14e93ce01b1166c903",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acf39bbf-fd76-d87c-211d-36da6a321204",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0521b48-a733-a642-0964-f681a6022ac8",
  "kind": "theorem",
  "lexical_name": "bumpFlux_hasDerivAt",
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
  "slug": "bumpflux-hasderivat--795c8dbe0b795dd6414c334c",
  "source": {
    "blob": "3e6f50c61cff7fd60e8ffc14e93ce01b1166c903",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:795c8dbe0b795dd6414c334ca0a66b5accf0e5eec10fcfb471aa66125b9fe599",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0521b48-a733-a642-0964-f681a6022ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bumpFlux_hasDerivAt (z : ℂ) (x : ℝ) :
    HasDerivAt (fun t : ℝ => (1 - (t : ℂ) ^ 2) ^ 5 * Complex.exp (z * (t : ℂ)))
      ((z * (1 - (x : ℂ) ^ 2) ^ 5 - 10 * (x : ℂ) * (1 - (x : ℂ) ^ 2) ^ 4) *
        Complex.exp (z * (x : ℂ))) x := by
  have hp := (((hasDerivAt_id (x : ℂ)).pow 2).const_sub 1).pow 5
  have he := ((hasDerivAt_id (x : ℂ)).const_mul z).cexp
  convert! (hp.mul he).comp_ofReal using 1
  simp only [id_eq, Pi.pow_apply]
  ring

/-- Integrating the exact fifth-power flux gives the coefficient-ten moment equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsAudit/Variant6df05ea3d3cd3ada282e7e8184fd774653671a8b4fa051696ea897934251d4ee.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e6f50c61cff7fd60e8ffc14e93ce01b1166c903` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
