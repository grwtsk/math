# halfPlane_convex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d94c9080-93c1-38f3-ea5b-ddeb3fa60bed",
  "kind": "theorem",
  "lexical_name": "halfPlane_convex",
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
  "slug": "halfplane-convex--05648684bd01009cf1ccf35c",
  "source": {
    "blob": "8959749460d0259144bbcd780f268e3898184bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Zeta/PoleRemovedSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05648684bd01009cf1ccf35c8a7b76f7958da237fe87c3a7b6115278ac71b1fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/PoleRemovedSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d94c9080-93c1-38f3-ea5b-ddeb3fa60bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfPlane_convex : Convex ℝ halfPlane := by
  intro x hx y hy a b ha hb hab
  change (1/2 : ℝ) < (a • x+b • y).re
  simp only [Complex.add_re, Complex.real_smul, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  change (1/2 : ℝ) < x.re at hx
  change (1/2 : ℝ) < y.re at hy
  by_cases ha0 : a=0
  · have hb1 : b=1 := by linarith
    simpa [ha0, hb1] using hy
  · have hap : 0<a := lt_of_le_of_ne ha (Ne.symm ha0)
    have h1 := mul_pos hap (sub_pos.mpr hx)
    have h2 := mul_nonneg hb (sub_nonneg.mpr hy.le)
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/PoleRemovedSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/PoleRemovedSource.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8959749460d0259144bbcd780f268e3898184bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
