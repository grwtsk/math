# inner_.norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14d587c9-8c31-c349-646b-32949627a7e8",
  "kind": "theorem",
  "lexical_name": "inner_.norm_sq",
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
  "slug": "inner-norm-sq--9a61d3aeedd2b0794a04cdb1",
  "source": {
    "blob": "e0737427d2d7033129860dc943054961181a4c05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 135,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a61d3aeedd2b0794a04cdb13c2b542d4713cf93ec91fe82d8fed89a94f09a38",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14d587c9-8c31-c349-646b-32949627a7e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_.norm_sq (x : E) : ‖x‖ ^ 2 = re (inner_ 𝕜 x x) := by
  simp only [inner_]
  have h₁ : IsROrC.normSq (4 : 𝕜) = 16 := by
    have : ((4 : ℝ) : 𝕜) = (4 : 𝕜) := by norm_cast
    rw [← this, normSq_eq_def', IsROrC.norm_of_nonneg (by norm_num : (0 : ℝ) ≤ 4)]
    norm_num
  have h₂ : ‖x + x‖ = 2 * ‖x‖ := by rw [← two_smul 𝕜, norm_smul, IsROrC.norm_two]
  simp only [h₁, h₂, algebraMap_eq_ofReal, sub_self, norm_zero, mul_re, inv_re, ofNat_re, map_sub,
    map_add, ofReal_re, ofNat_im, ofReal_im, mul_im, I_re, inv_im]
  ring
#align inner_product_spaceable.inner_.norm_sq InnerProductSpaceable.inner_.norm_sq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant04c40e4058a6c2fd530ed8f7a34e29d611cbeb77bb8c6627c108b1916ed4f144.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0737427d2d7033129860dc943054961181a4c05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
