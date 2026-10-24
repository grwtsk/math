# coeff_mul_mem_ideal_of_coeff_right_mem_ideal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:026d8627-7306-9ca1-e0d4-50458a55625b",
  "kind": "theorem",
  "lexical_name": "coeff_mul_mem_ideal_of_coeff_right_mem_ideal",
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
  "slug": "coeff-mul-mem-ideal-of-coeff-right-mem-ideal--aa5adc53804a00b920289c48",
  "source": {
    "blob": "538092722d54a2c56323be9a97912d664c7ab98f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 60,
    "path": "GRWTSK/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa5adc53804a00b920289c4877b083c10ab776b8ecd8224a938ebfeba9bcc4ae",
  "verification": {
    "reference": "docs/verification/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:026d8627-7306-9ca1-e0d4-50458a55625b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mul_mem_ideal_of_coeff_right_mem_ideal
    (hg : ∀ i ≤ n, coeff A i g ∈ I) : ∀ i ≤ n, coeff A i (f * g) ∈ I := by
  simpa using coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal (I := ⊤) (f := f) n (by simp) hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CoeffMulMem/Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `538092722d54a2c56323be9a97912d664c7ab98f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
