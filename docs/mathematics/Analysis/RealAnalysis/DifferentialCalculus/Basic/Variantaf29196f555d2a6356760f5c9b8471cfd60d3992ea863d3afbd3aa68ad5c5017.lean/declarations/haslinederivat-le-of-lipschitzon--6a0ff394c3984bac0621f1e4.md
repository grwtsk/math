# HasLineDerivAt.le_of_lipschitzOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b891e8c52c06fe1ff0248c24d05196656357aaf2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2225f981-4ea7-da69-eaea-87c35c3c8fa3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87c91f4e-98c4-d8da-64ec-cac699bad8d4",
  "kind": "theorem",
  "lexical_name": "HasLineDerivAt.le_of_lipschitzOn",
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
  "slug": "haslinederivat-le-of-lipschitzon--6a0ff394c3984bac0621f1e4",
  "source": {
    "blob": "b891e8c52c06fe1ff0248c24d05196656357aaf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 409,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a0ff394c3984bac0621f1e4fb23e9ee47f1e17a35b63e53f9294a54689ded3e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87c91f4e-98c4-d8da-64ec-cac699bad8d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasLineDerivAt.le_of_lipschitzOn
    {f : E → F} {f' : F} {x₀ : E} (hf : HasLineDerivAt 𝕜 f f' x₀ v)
    {s : Set E} (hs : s ∈ 𝓝 x₀) {C : ℝ≥0} (hlip : LipschitzOnWith C f s) :
    ‖f'‖ ≤ C * ‖v‖ := by
  refine hf.le_of_lip' C.coe_nonneg ?_
  filter_upwards [hs] with x hx using hlip.norm_sub_le hx (mem_of_mem_nhds hs)

/-- Converse to the mean value inequality: if `f` is line differentiable at `x₀` and `C`-lipschitz
then its line derivative at `x₀` in the direction `v` has norm bounded by `C * ‖v‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b891e8c52c06fe1ff0248c24d05196656357aaf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
