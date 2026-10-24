# inverse_sqrt_antiderivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab79a3d8-8d7b-3980-64c5-71c05e28bc12",
  "kind": "theorem",
  "lexical_name": "inverse_sqrt_antiderivative",
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
  "slug": "inverse-sqrt-antiderivative--1bac6662af870128a024c3e9",
  "source": {
    "blob": "06536453d784d52050f966efb513bc905a0735e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/E0e5ea3284b3e7145cfaSourceColumnEnvelopeMass/Variantb9362138a6a521df457f2803a412a785f18d56de5dc1c94b318de0c35a93b4da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bac6662af870128a024c3e9c5ee6c03ccdf08d59b92cc5b4dc5cf2385377fb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/E0e5ea3284b3e7145cfaSourceColumnEnvelopeMass/Variantb9362138a6a521df457f2803a412a785f18d56de5dc1c94b318de0c35a93b4da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab79a3d8-8d7b-3980-64c5-71c05e28bc12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_sqrt_antiderivative (x : ℝ) (hx : 0 < x) :
    HasDerivAt (fun x : ℝ => -2 / Real.sqrt x)
      (1 / (x * Real.sqrt x)) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hd := ((Real.hasDerivAt_sqrt hx.ne').inv hs).const_mul (-2)
  have he : -2 * (-(1 / (2 * Real.sqrt x)) / Real.sqrt x ^ 2) =
      1 / (x * Real.sqrt x) := by
    field_simp [hs, hx.ne']
    nlinarith [Real.sq_sqrt hx.le]
  convert hd.congr_deriv he using 1 <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/E0e5ea3284b3e7145cfaSourceColumnEnvelopeMass/Variantb9362138a6a521df457f2803a412a785f18d56de5dc1c94b318de0c35a93b4da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/E0e5ea3284b3e7145cfaSourceColumnEnvelopeMass/Variantb9362138a6a521df457f2803a412a785f18d56de5dc1c94b318de0c35a93b4da.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06536453d784d52050f966efb513bc905a0735e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
