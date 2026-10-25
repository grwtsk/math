# residual_negative_of_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f311d644-a958-37ab-bf79-9aa80235aa20",
  "kind": "theorem",
  "lexical_name": "residual_negative_of_upper",
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
  "slug": "residual-negative-of-upper--71676e3fa4d2ff1969bbd3c1",
  "source": {
    "blob": "18a1749dcdd80907299c8a0f21db428bb7bb4e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71676e3fa4d2ff1969bbd3c13f7caea6a3cd5c3987096fc5998c1188a770d0b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f311d644-a958-37ab-bf79-9aa80235aa20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_negative_of_upper {A r a0 : ℝ} (hA : 10 ≤ A)
    (ha0 : a0 < -4)
    (hr : r ≤ a0 / 2 + 195 / A ^ 2 + (1 / 1000000 : ℝ)) : r < 0 := by
  have hA2 : (100 : ℝ) ≤ A ^ 2 := by nlinarith [sq_nonneg (A - 10)]
  have hA2pos : 0 < A ^ 2 := by linarith
  have hquot : 195 / A ^ 2 ≤ (195 / 100 : ℝ) := by
    apply (div_le_iff₀ hA2pos).2
    nlinarith
  linarith

/-- Named conditional analytic premises on the complete finite real interval.

`verifiedHeadNonnegative` is to be obtained from the complete verified-height
input, real-zero exclusion, both ordinate signs, and multiplicities; a sampled
list of zeros cannot instantiate it. `strictTailAbsoluteBound` requires the
actual transform/strip estimate, corrected counting input, strict Stieltjes
endpoint subtraction, both signs, and continuum endpoint maximum. None is
proved by the rational arithmetic theorem alone. The source identity and gamma
budget must be instantiated from the actual repository family and original Z_A.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteCertificate/Variant714053d739f9c6376062c44052d266a0cede4f2ccf383fefa3b14f7bc87a6417.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18a1749dcdd80907299c8a0f21db428bb7bb4e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
