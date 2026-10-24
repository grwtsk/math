# actual_quarter_real_value

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06bc65b1-025e-77b6-a19f-303d59612be9",
  "kind": "theorem",
  "lexical_name": "actual_quarter_real_value",
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
  "slug": "actual-quarter-real-value--82e43214365cf9d40ae05977",
  "source": {
    "blob": "2941a1587acbb643ac5401a9d1a090f447e14ad9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 124,
    "path": "GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e43214365cf9d40ae0597713c9269fa4d925e9ad3a801895c945af5dab72b7",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06bc65b1-025e-77b6-a19f-303d59612be9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_quarter_real_value :
    (Complex.digamma (1/4)).re = -Real.eulerMascheroniConstant -
      3*Real.log 2 - Real.pi/2 := by
  rw [actual_quarter_value]
  norm_num [Complex.sub_re, Complex.div_re, Complex.mul_re, Complex.log_re]

#print axioms gamma_of_positive_nonzero
#print axioms gamma_of_positive_differentiable
#print axioms reflection_quarter
#print axioms duplication_quarter
#print axioms actual_quarter_value
#print axioms actual_quarter_real_value
end ContinuousResearch.QuarterDigammaEndpoint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2941a1587acbb643ac5401a9d1a090f447e14ad9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
