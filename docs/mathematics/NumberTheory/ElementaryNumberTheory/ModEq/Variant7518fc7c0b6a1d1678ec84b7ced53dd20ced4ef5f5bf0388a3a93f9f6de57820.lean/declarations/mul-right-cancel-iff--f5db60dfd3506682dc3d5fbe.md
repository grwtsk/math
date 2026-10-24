# mul_right_cancel_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f770dfcf-5e72-195a-3eff-a5b5d72dcb98",
  "kind": "theorem",
  "lexical_name": "mul_right_cancel_iff'",
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
  "slug": "mul-right-cancel-iff--f5db60dfd3506682dc3d5fbe",
  "source": {
    "blob": "63f9190dcb369537651d0142c3361a5a9689de7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 210,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5db60dfd3506682dc3d5fbe8faac36b6ed4db6f35d6a2b62921693532a19894",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f770dfcf-5e72-195a-3eff-a5b5d72dcb98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_right_cancel_iff' {a b c m : ℕ} (hc : c ≠ 0) :
    a * c ≡ b * c [MOD m * c] ↔ a ≡ b [MOD m] :=
  ⟨ModEq.mul_right_cancel' hc, ModEq.mul_right' _⟩
#align nat.modeq.mul_right_cancel_iff' Nat.ModEq.mul_right_cancel_iff'

/-- Cancel left multiplication in the modulus.

For cancelling left multiplication on both sides of the `≡`, see `nat.modeq.mul_left_cancel'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant7518fc7c0b6a1d1678ec84b7ced53dd20ced4ef5f5bf0388a3a93f9f6de57820.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f9190dcb369537651d0142c3361a5a9689de7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
