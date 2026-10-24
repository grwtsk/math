# literal_half_integer_phase_carrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cadaaae-c08a-633d-e06f-d299ba829b15",
  "kind": "theorem",
  "lexical_name": "literal_half_integer_phase_carrier",
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
  "slug": "literal-half-integer-phase-carrier--03f190f47e17dbfb08b495fc",
  "source": {
    "blob": "ab327bb686d5347949705f63e8cea619c078a09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 45,
    "path": "GRWTSK/Analysis/NativeOffGridPhaseCarrier/Variant35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03f190f47e17dbfb08b495fcefee114b6d98e7e4286bd6f747b4c5e98b83509a",
  "verification": {
    "reference": "docs/verification/Analysis/NativeOffGridPhaseCarrier/Variant35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cadaaae-c08a-633d-e06f-d299ba829b15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_half_integer_phase_carrier (n : ℕ) :
    Complex.exp (((n : ℝ) + 1 / 2 : ℝ) * (2 * (Real.pi : ℂ) * Complex.I)) = -1 := by
  have he : (((n : ℝ) + 1 / 2 : ℝ) : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) =
      (n : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) + (Real.pi : ℂ) * Complex.I := by
    push_cast
    ring
  rw [he, Complex.exp_add, literal_integer_phase_carrier, Complex.exp_pi_mul_I, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NativeOffGridPhaseCarrier/Variant35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NativeOffGridPhaseCarrier/Variant35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab327bb686d5347949705f63e8cea619c078a09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
