# real_sSup_of_nat_affine_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b089a668-f898-81fe-eff4-086a47b13e39",
  "kind": "theorem",
  "lexical_name": "real_sSup_of_nat_affine_eq",
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
  "slug": "real-ssup-of-nat-affine-eq--73ce63c6aa4fac730a4c3f33",
  "source": {
    "blob": "5414e3f1a4c9f4e34cc582880456806a910a2c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 259,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ce63c6aa4fac730a4c3f330842f86849261bcb988de2a74fb30f9904ecd3e6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b089a668-f898-81fe-eff4-086a47b13e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_sSup_of_nat_affine_eq [HereditarilyLindelofSpace E] (hsc : IsClosed s)
    (hφc : LowerSemicontinuousOn φ s) (hφcv : ConvexOn ℝ s φ) :
    ∃ (l : ℕ → E →L[ℝ] ℝ) (c : ℕ → ℝ),
      (∀ i, s.domRestrict (l i) + const s (c i) ≤ s.domRestrict φ) ∧
      ⨆ i, s.domRestrict (l i) + const s (c i) = s.domRestrict φ :=
  sSup_of_nat_affine_eq (𝕜 := ℝ) hsc hφc hφcv

/-- The real version of `univ_sSup_affine_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant7a67bb00ecebbdc5c56715e80b11e46a73aa3470bd4a895bfefa7814f34e830e.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5414e3f1a4c9f4e34cc582880456806a910a2c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
