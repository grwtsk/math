# phaseIII_positive_iff_visible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a60db4d9-8e98-8cb3-a5ed-18d20fbcc8fd",
  "kind": "theorem",
  "lexical_name": "phaseIII_positive_iff_visible",
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
  "slug": "phaseiii-positive-iff-visible--9bc8885176a27153713237f7",
  "source": {
    "blob": "fd72b8ee8fa979a67246b4203146e59d2675cbe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 173,
    "path": "GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bc8885176a27153713237f7654de0ff26ee434ba5428c42c468dc5fee184b51",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a60db4d9-8e98-8cb3-a5ed-18d20fbcc8fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phaseIII_positive_iff_visible (x : X) :
    0 < C.phaseIIISensitivity x ↔
      C.phaseII.geometry.Visible
        (C.phaseIII.projectedDifferential C.intervention x) :=
  C.phaseIII.interventionSensitivity_pos_iff_visible C.intervention x

end ThreePhaseCore

/-- Full four-phase composition: the first three phases plus an independent
Phase-IV comparator and quantitative margin regime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variantd16d06b51477db3aa6e9c551c74b75751c929ebade5349c5130da014d418c716.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd72b8ee8fa979a67246b4203146e59d2675cbe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
