# isPrincipal_add_mul_of_isPrincipal_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e7c7b02-da2a-d612-967a-7865a92cae72",
  "kind": "theorem",
  "lexical_name": "isPrincipal_add_mul_of_isPrincipal_add",
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
  "slug": "isprincipal-add-mul-of-isprincipal-add--28fa46ed4f702e8a2445d54e",
  "source": {
    "blob": "f861d902ab73fb9d15ebb284b22fb433054e57d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 342,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28fa46ed4f702e8a2445d54ea4afebafe6d843b338dc0ed06fda52c4330d06c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e7c7b02-da2a-d612-967a-7865a92cae72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipal_add_mul_of_isPrincipal_add (a : Ordinal.{u}) {b : Ordinal.{u}} (hb₁ : b ≠ 1)
    (hb : IsPrincipal (· + ·) b) : IsPrincipal (· + ·) (a * b) := by
  rcases eq_zero_or_pos a with (rfl | _)
  · rw [zero_mul]
    exact isPrincipal_zero
  · rcases eq_zero_or_pos b with (rfl | hb₁')
    · rw [mul_zero]
      exact isPrincipal_zero
    · rw [← one_le_iff_pos] at hb₁'
      intro c d hc hd
      rw [lt_mul_iff_of_isSuccLimit
        (isSuccLimit_of_isPrincipal_add (lt_of_le_of_ne hb₁' hb₁.symm) hb)] at *
      rcases hc with ⟨x, hx, hx'⟩
      rcases hd with ⟨y, hy, hy'⟩
      use x + y, hb hx hy
      rw [mul_add]
      exact Left.add_lt_add hx' hy'

@[deprecated (since := "2026-03-17")]
alias principal_add_mul_of_principal_add := isPrincipal_add_mul_of_isPrincipal_add

/-! ### Multiplicative principal ordinals -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f861d902ab73fb9d15ebb284b22fb433054e57d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
