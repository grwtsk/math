# midpoint_vsub_midpoint_same_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:215533a7-ada8-a2b8-3895-4027448ccdc2",
  "kind": "theorem",
  "lexical_name": "midpoint_vsub_midpoint_same_right",
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
  "slug": "midpoint-vsub-midpoint-same-right--98d9ad5d6e73f522ca56deb7",
  "source": {
    "blob": "495a5d4d9d76f7a0b378188e8e2b479ecdf2e5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantef29601b17b280bbfd41fed7c8568f4941ee541cbf3b5e827ceb9a9e473de62f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98d9ad5d6e73f522ca56deb74e144205f00aef36f07db1c0d25d5a83461aa209",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantef29601b17b280bbfd41fed7c8568f4941ee541cbf3b5e827ceb9a9e473de62f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:215533a7-ada8-a2b8-3895-4027448ccdc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem midpoint_vsub_midpoint_same_right (p₁ p₂ p₃ : P) :
    midpoint R p₁ p₃ -ᵥ midpoint R p₂ p₃ = (⅟2 : R) • (p₁ -ᵥ p₂) := by
  rw [midpoint_vsub_midpoint, vsub_self, midpoint_eq_smul_add, add_zero]

end

namespace AddMonoidHom

variable (R R' : Type*) {E F : Type*} [Ring R] [Invertible (2 : R)] [AddCommGroup E] [Module R E]
  [Ring R'] [Invertible (2 : R')] [AddCommGroup F] [Module R' F]

/-- A map `f : E → F` sending zero to zero and midpoints to midpoints is an `AddMonoidHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantef29601b17b280bbfd41fed7c8568f4941ee541cbf3b5e827ceb9a9e473de62f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantef29601b17b280bbfd41fed7c8568f4941ee541cbf3b5e827ceb9a9e473de62f.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `495a5d4d9d76f7a0b378188e8e2b479ecdf2e5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
