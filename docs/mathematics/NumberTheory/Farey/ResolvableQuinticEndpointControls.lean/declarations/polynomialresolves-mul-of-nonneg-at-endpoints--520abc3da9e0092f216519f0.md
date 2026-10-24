# polynomialResolves_mul_of_nonneg_at_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5169189-147d-3879-2745-b087136cc203",
  "kind": "theorem",
  "lexical_name": "polynomialResolves_mul_of_nonneg_at_endpoints",
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
  "slug": "polynomialresolves-mul-of-nonneg-at-endpoints--520abc3da9e0092f216519f0",
  "source": {
    "blob": "28d8456db1dc7c6243b51275b8216e3f1ff89c71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:520abc3da9e0092f216519f079e60d630741c7769f9d834acbfabd7ed12b3d91",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5169189-147d-3879-2745-b087136cc203`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomialResolves_mul_of_nonneg_at_endpoints
    (q c : Polynomial ℚ) (I : Cell)
    (hleft : 0 ≤ q.eval I.left) (hright : 0 ≤ q.eval I.right)
    (h : PolynomialResolves c I) :
    PolynomialResolves (q * c) I := by
  change (q * c).eval I.left ≤ 0 ∧ 0 ≤ (q * c).eval I.right
  constructor
  · rw [Polynomial.eval_mul]
    exact mul_nonpos_of_nonneg_of_nonpos hleft h.1
  · rw [Polynomial.eval_mul]
    exact mul_nonneg hright h.2

/-- The canonical determinant-one Farey interval from zero to one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d8456db1dc7c6243b51275b8216e3f1ff89c71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
