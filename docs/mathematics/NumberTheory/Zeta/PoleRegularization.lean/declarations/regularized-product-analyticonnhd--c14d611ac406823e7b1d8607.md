# regularized_product_analyticOnNhd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b47b2e1-8ae2-0621-5274-630aaed7cb51",
  "kind": "theorem",
  "lexical_name": "regularized_product_analyticOnNhd",
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
  "slug": "regularized-product-analyticonnhd--c14d611ac406823e7b1d8607",
  "source": {
    "blob": "378527073faffc80c4241eabbda7e70a57d59dd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Zeta/PoleRegularization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c14d611ac406823e7b1d8607db3e46ff52b3c9b5bb5b4c1014057c08a64511f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/PoleRegularization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b47b2e1-8ae2-0621-5274-630aaed7cb51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularized_product_analyticOnNhd {F : ℂ → ℂ}
    (hF : DifferentiableOn ℂ F rightHalfPlane) :
    AnalyticOnNhd ℂ (regularizedProduct F) rightHalfPlane := by
  intro z hz
  have shift : AnalyticAt ℂ (fun w : ℂ => w + (1 / 2 : ℂ)) z :=
    analyticAt_id.add analyticAt_const
  have regularized : AnalyticAt ℂ (fun w : ℂ => regularizedZeta (w + (1 / 2 : ℂ))) z :=
    (regularized_zeta_analyticAt (z + (1 / 2 : ℂ))).comp
      (f := fun w : ℂ => w + (1 / 2 : ℂ)) (x := z) shift
  exact ((analyticAt_id.mul shift).mul regularized).mul
    ((hF.analyticOnNhd right_half_plane_isOpen) z hz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/PoleRegularization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/PoleRegularization.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `378527073faffc80c4241eabbda7e70a57d59dd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
