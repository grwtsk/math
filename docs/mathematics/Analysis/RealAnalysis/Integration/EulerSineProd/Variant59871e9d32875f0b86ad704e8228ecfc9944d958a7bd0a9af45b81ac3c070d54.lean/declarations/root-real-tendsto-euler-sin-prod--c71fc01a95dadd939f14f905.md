# _root_.Real.tendsto_euler_sin_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "743f6583cf95ab20850d0dc2d9c0208f4857814e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46799c05-043f-e931-6f90-1280b50e31b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9868d673-5692-3694-a43d-6dbb47c204a8",
  "kind": "theorem",
  "lexical_name": "_root_.Real.tendsto_euler_sin_prod",
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
  "slug": "root-real-tendsto-euler-sin-prod--c71fc01a95dadd939f14f905",
  "source": {
    "blob": "743f6583cf95ab20850d0dc2d9c0208f4857814e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 332,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c71fc01a95dadd939f14f9053c65101909dc0bf2769be3853029e362c663a55c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9868d673-5692-3694-a43d-6dbb47c204a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Real.tendsto_euler_sin_prod (x : ℝ) :
    Tendsto (fun n : ℕ => π * x * ∏ j in Finset.range n, ((1 : ℝ) - x ^ 2 / ((j : ℝ) + 1) ^ 2))
      atTop (𝓝 <| sin (π * x)) := by
  convert (Complex.continuous_re.tendsto _).comp (Complex.tendsto_euler_sin_prod x) using 1
  · ext1 n
    rw [Function.comp_apply, ← Complex.ofReal_mul, Complex.ofReal_mul_re]
    suffices
      (∏ j : ℕ in Finset.range n, ((1 : ℂ) - (x : ℂ) ^ 2 / ((j : ℂ) + 1) ^ 2)) =
        (∏ j : ℕ in Finset.range n, ((1 : ℝ) - x ^ 2 / ((j : ℝ) + 1) ^ 2) : ℝ) by
      rw [this, Complex.ofReal_re]
    rw [Complex.ofReal_prod]
    refine' Finset.prod_congr (by rfl) fun n _ => _
    norm_cast
  · rw [← Complex.ofReal_mul, ← Complex.ofReal_sin, Complex.ofReal_re]
#align real.tendsto_euler_sin_prod Real.tendsto_euler_sin_prod

end EulerSine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743f6583cf95ab20850d0dc2d9c0208f4857814e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
