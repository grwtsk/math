# divp_add_divp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9505afaa-09b2-6dad-9568-b9c7c84eea86",
  "kind": "theorem",
  "lexical_name": "divp_add_divp",
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
  "slug": "divp-add-divp--9ccf612b27a068e05b4b62d6",
  "source": {
    "blob": "3d102352cfedc02b1b4655f6bd6f4987751559a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 123,
    "path": "GRWTSK/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ccf612b27a068e05b4b62d6d29abe87b84659615541c5687156366e11e65c43",
  "verification": {
    "reference": "docs/verification/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9505afaa-09b2-6dad-9568-b9c7c84eea86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divp_add_divp [CommSemiring α] (a b : α) (u₁ u₂ : αˣ) :
    a /ₚ u₁ + b /ₚ u₂ = (a * u₂ + u₁ * b) /ₚ (u₁ * u₂) := by
  simp only [divp, add_mul, mul_inv_rev, val_mul]
  rw [mul_comm (↑u₁ * b), mul_comm b]
  rw [← mul_assoc, ← mul_assoc, mul_assoc a, mul_assoc (↑u₂⁻¹ : α), mul_inv, inv_mul, mul_one,
    mul_one]
  -- Porting note: `assoc_rw` not ported: `assoc_rw [mul_inv, mul_inv, mul_one, mul_one]`

@[field_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Units/Variant93b2a51b645cbb552257e324bd93a099dc07f6c777c9adcf1e0b38c2020a4f58.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d102352cfedc02b1b4655f6bd6f4987751559a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
