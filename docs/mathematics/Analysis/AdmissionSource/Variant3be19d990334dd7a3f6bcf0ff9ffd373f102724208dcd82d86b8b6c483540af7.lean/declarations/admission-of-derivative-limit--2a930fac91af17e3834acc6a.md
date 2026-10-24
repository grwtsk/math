# admission_of_derivative_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad1ed97c-7f71-cf65-c880-54b3b3189e93",
  "kind": "theorem",
  "lexical_name": "admission_of_derivative_limit",
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
  "slug": "admission-of-derivative-limit--2a930fac91af17e3834acc6a",
  "source": {
    "blob": "9a604dff778529f7537ee309a4a5c3153464644d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a930fac91af17e3834acc6a9a4f77fd24589c1aaa63647f05cb1a2b6d617477",
  "verification": {
    "reference": "docs/verification/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad1ed97c-7f71-cf65-c880-54b3b3189e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admission_of_derivative_limit (h : EulerDerivativeLimit) :
    NormalizationAdmissibilityObligation :=
  normalization_admissibility_iff_archimedean.mpr
    (archimedean_integrability_of_series (quarter_series_of_derivative_limit h))

/-- The actual quarter-line source identity is now proved from Euler convergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AdmissionSource/Variant3be19d990334dd7a3f6bcf0ff9ffd373f102724208dcd82d86b8b6c483540af7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a604dff778529f7537ee309a4a5c3153464644d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
