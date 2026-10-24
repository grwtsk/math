# natCast_eq_im_halfContour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc95e9ab-c790-32e7-b05f-1a8d1d83a294",
  "kind": "theorem",
  "lexical_name": "natCast_eq_im_halfContour",
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
  "slug": "natcast-eq-im-halfcontour--3049e82acb083f69dbe89315",
  "source": {
    "blob": "9ae7962b5b8c5af66e2f026f89c417c6d6331fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3049e82acb083f69dbe893156079dc1f8052c5a3ecd060dd499511529bda90a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc95e9ab-c790-32e7-b05f-1a8d1d83a294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCast_eq_im_halfContour {N : ℕ}
    (hN : RectangleIntegral' F (-1 + T₁ * I) (2 + T₂ * I) = (N : ℂ))
    (hfold : RectangleIntegral F (-1 + T₁ * I) (2 + T₂ * I) = 2 * I * ((halfContour F T₁ T₂).im : ℂ)) :
    (N : ℝ) = (1 / Real.pi) * (halfContour F T₁ T₂).im := by
  have h := hN
  change (1 / (2 * Real.pi * I)) • RectangleIntegral _ _ _ = _ at h
  rw [hfold, smul_eq_mul] at h
  have h' : ((N : ℝ) : ℂ) = (((1 / Real.pi) * (halfContour F T₁ T₂).im : ℝ) : ℂ) := by
    push_cast; rw [← h]; field_simp
  exact_mod_cast h'

end fold

/-! ### (B) the main-term assembly -/

set_option maxHeartbeats 1000000 in
/-- **(B) Riemann–von Mangoldt main term, generic**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ae7962b5b8c5af66e2f026f89c417c6d6331fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
