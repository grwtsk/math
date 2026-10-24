# AlgEquiv.spectrum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb8fe41c-335d-efbc-7de9-a8678e3c932a",
  "kind": "theorem",
  "lexical_name": "AlgEquiv.spectrum_eq",
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
  "slug": "algequiv-spectrum-eq--02529e707e2eb54e0127b451",
  "source": {
    "blob": "224f704719226915ab23482aa01c3e65c11f16af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 447,
    "path": "GRWTSK/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02529e707e2eb54e0127b4517d9c8c55e2a975318b96fc603f42ceeadeac5de4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb8fe41c-335d-efbc-7de9-a8678e3c932a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgEquiv.spectrum_eq {F R A B : Type*} [CommSemiring R] [Ring A] [Ring B] [Algebra R A]
    [Algebra R B] [EquivLike F A B] [AlgEquivClass F R A B] (f : F) (a : A) :
    spectrum R (f a) = spectrum R a :=
  Set.Subset.antisymm (AlgHom.spectrum_apply_subset _ _) <| by
    simpa only [AlgEquiv.coe_algHom, AlgEquiv.coe_coe_symm_apply_coe_apply] using
      AlgHom.spectrum_apply_subset (f : A ≃ₐ[R] B).symm (f a)

section ConjugateUnits

variable {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]

/-- Conjugation by a unit preserves the spectrum, inverse on right. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6f2374dd135b95236dcacfd1ea1f04e7e4606c8e3fca1264beafb4355df9122e.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224f704719226915ab23482aa01c3e65c11f16af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
