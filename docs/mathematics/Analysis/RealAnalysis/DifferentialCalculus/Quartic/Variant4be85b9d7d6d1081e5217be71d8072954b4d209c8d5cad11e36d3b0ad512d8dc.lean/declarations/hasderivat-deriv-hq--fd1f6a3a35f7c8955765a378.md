# hasDerivAt_deriv_hQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ef8d4e3-8d0b-5cb1-8feb-a26b1fc3949e",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_deriv_hQ",
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
  "slug": "hasderivat-deriv-hq--fd1f6a3a35f7c8955765a378",
  "source": {
    "blob": "85ba992f8e2ccf54c8da85a7ad2a0d8370ef9acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd1f6a3a35f7c8955765a378e8fff6c537a8eb2483c2f8779d83d37c782a4ec3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ef8d4e3-8d0b-5cb1-8feb-a26b1fc3949e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_deriv_hQ (hL : 0 < L) (u : ℝ) :
    HasDerivAt (deriv (hQ L)) (-(14 / 25) / L ^ 2 - 1224 / 25 * u ^ 2 / L ^ 4) u := by
  have e : deriv (hQ L) = fun u => -(14 / 25 / L ^ 2) * u - (408 / 25 / L ^ 4) * u ^ 3 := by
    funext u; rw [deriv_hQ hL]; field_simp
  rw [e]
  have h1 : HasDerivAt (fun u : ℝ => -(14 / 25 / L ^ 2) * u) (-(14 / 25 / L ^ 2)) u := by
    simpa using (hasDerivAt_id u).const_mul (-(14 / 25 / L ^ 2))
  have h2 : HasDerivAt (fun u : ℝ => 408 / 25 / L ^ 4 * u ^ 3) (408 / 25 / L ^ 4 * (3 * u ^ 2)) u := by
    simpa using (hasDerivAt_pow 3 u).const_mul (408 / 25 / L ^ 4)
  have h : HasDerivAt (fun u : ℝ => -(14 / 25 / L ^ 2) * u - 408 / 25 / L ^ 4 * u ^ 3)
      (-(14 / 25 / L ^ 2) - 408 / 25 / L ^ 4 * (3 * u ^ 2)) u := h1.sub h2
  refine h.congr_deriv ?_
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85ba992f8e2ccf54c8da85a7ad2a0d8370ef9acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
