# normalizedDerivOfComplex_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a22b423e-b241-5df0-9c71-677eb9c91906",
  "kind": "theorem",
  "lexical_name": "normalizedDerivOfComplex_add",
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
  "slug": "normalizedderivofcomplex-add--4e0a938157ce9477fee42908",
  "source": {
    "blob": "01573ec68cb07af47909f04352ee6d894ad8232a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e0a938157ce9477fee4290818cd022eabfc81602d8612ec75462325cb07e867",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a22b423e-b241-5df0-9c71-677eb9c91906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedDerivOfComplex_add (F G : ℍ → ℂ) (hF : MDiff F) (hG : MDiff G) :
    D (F + G) = D F + D G := by
  ext z
  have hFz := UpperHalfPlane.mdifferentiableAt_iff.mp (hF z)
  have hGz := UpperHalfPlane.mdifferentiableAt_iff.mp (hG z)
  simp only [normalizedDerivOfComplex, Pi.add_apply]
  rw [show (F + G) ∘ ofComplex = F ∘ ofComplex + G ∘ ofComplex from rfl,
    deriv_add hFz hGz, mul_add]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01573ec68cb07af47909f04352ee6d894ad8232a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
