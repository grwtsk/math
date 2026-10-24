# Filter.EventuallyEq.lineDerivWithin_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb09ebda-efde-776b-a0b0-3c29388be135",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.lineDerivWithin_eq",
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
  "slug": "filter-eventuallyeq-linederivwithin-eq--86d2a0d2d7e1ebc7993a6771",
  "source": {
    "blob": "92ee1378520150e7f2b632c41a9821af096f9945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 385,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7a14d1f3d3b632be000db96ca7254ed2e1505faabd9c79f5637cbb0d2e531cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86d2a0d2d7e1ebc7993a677128439e0cbfa5cb0102714909ff0c96964cbd1125",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7a14d1f3d3b632be000db96ca7254ed2e1505faabd9c79f5637cbb0d2e531cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb09ebda-efde-776b-a0b0-3c29388be135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEq.lineDerivWithin_eq (hs : f₁ =ᶠ[𝓝[s] x] f) (hx : f₁ x = f x) :
    lineDerivWithin 𝕜 f₁ s x v = lineDerivWithin 𝕜 f s x v := by
  apply derivWithin_eq ?_ (by simpa using hx)
  have A : Continuous (fun (t : 𝕜) ↦ x + t • v) := by fun_prop
  exact A.continuousWithinAt.preimage_mem_nhdsWithin'' hs (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7a14d1f3d3b632be000db96ca7254ed2e1505faabd9c79f5637cbb0d2e531cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7a14d1f3d3b632be000db96ca7254ed2e1505faabd9c79f5637cbb0d2e531cf1.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ee1378520150e7f2b632c41a9821af096f9945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
