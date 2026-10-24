# greenPrimeFrameSum_mul_background_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbbf2c08-e9da-c2f0-4ab1-71ca8ee09fd0",
  "kind": "theorem",
  "lexical_name": "greenPrimeFrameSum_mul_background_integrable",
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
  "slug": "greenprimeframesum-mul-background-integrable--809d86d6f2ee3757166808dc",
  "source": {
    "blob": "a75184ac4aa23c2193401bc0d3d8349df3706b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:809d86d6f2ee3757166808dc516587ef3492a5d69ae76ac7dff6392ba1e1044d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbbf2c08-e9da-c2f0-4ab1-71ca8ee09fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenPrimeFrameSum_mul_background_integrable
    (X : ℕ) :
    Integrable
      (fun t =>
        greenPrimeFrameSum X t * centeredLogarithmAtom t)
      unitVolume := by
  have hex (t : ℝ) :
      greenPrimeFrameSum X t * centeredLogarithmAtom t =
        ∑ n ∈ window X,
          coefficient n *
            (feature (location X n) t * centeredLogarithmAtom t) := by
    unfold greenPrimeFrameSum
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    ring
  simp_rw [hex]
  exact integrable_finsetSum (window X) (fun n hn =>
    (feature_mul_centeredLogarithmAtom_integrable (location X n)).const_mul _)

/-- Exact prime-prime Green Gram block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a75184ac4aa23c2193401bc0d3d8349df3706b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
