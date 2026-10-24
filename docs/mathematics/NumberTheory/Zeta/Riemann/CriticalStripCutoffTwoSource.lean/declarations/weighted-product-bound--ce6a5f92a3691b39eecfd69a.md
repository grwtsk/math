# weighted_product_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3fcf4cd-1094-4f05-ad11-c98a88c4d9ae",
  "kind": "lemma",
  "lexical_name": "weighted_product_bound",
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
  "slug": "weighted-product-bound--ce6a5f92a3691b39eecfd69a",
  "source": {
    "blob": "707808984bfd819e6237f65cbdfc936d8c0a6505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce6a5f92a3691b39eecfd69ab1270ff0c1bc2c1ef5ca41092700a86ede0751d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3fcf4cd-1094-4f05-ad11-c98a88c4d9ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weighted_product_bound {p q w a d : ℝ}
    (hp : 0 ≤ p) (hq : 0 ≤ q) (ha : 0 ≤ a) (hd : 0 ≤ d)
    (hweight : p^2*w ≤ 1) (hsize : 2*q^2 ≤ a^2*w*d^2) :
    p*q ≤ (99/140 : ℝ)*a*d := by
  have h1 := mul_le_mul_of_nonneg_left hsize (sq_nonneg p)
  have h2 := mul_le_mul_of_nonneg_right hweight
    (mul_nonneg (sq_nonneg a) (sq_nonneg d))
  have hsquare : 2*(p*q)^2 ≤ (a*d)^2 := by nlinarith
  apply (sq_le_sq₀ (mul_nonneg hp hq) (by positivity : 0 ≤ (99/140 : ℝ)*a*d)).mp
  nlinarith [sq_nonneg (a*d)]

/-- The factor s-1 is reserved for the actual high-band reference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `707808984bfd819e6237f65cbdfc936d8c0a6505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
