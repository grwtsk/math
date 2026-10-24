# hasConstantSpeedOnWith_iff_ordered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1e3fe48-a713-32b8-66e0-a7e14635644d",
  "kind": "theorem",
  "lexical_name": "hasConstantSpeedOnWith_iff_ordered",
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
  "slug": "hasconstantspeedonwith-iff-ordered--9bc6ebbbbd87427521d163c6",
  "source": {
    "blob": "7c382920ebc71da29aa4dc644bbddc05c5dc2dde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 81,
    "path": "GRWTSK/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bc6ebbbbd87427521d163c6a926d89aff8e81aea38f295305ccb9c2eac76d91",
  "verification": {
    "reference": "docs/verification/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1e3fe48-a713-32b8-66e0-a7e14635644d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasConstantSpeedOnWith_iff_ordered :
    HasConstantSpeedOnWith f s l ↔ ∀ ⦃x⦄ (_ : x ∈ s) ⦃y⦄ (_ : y ∈ s),
      x ≤ y → eVariationOn f (s ∩ Icc x y) = ENNReal.ofReal (l * (y - x)) := by
  refine ⟨fun h x xs y ys _ => h xs ys, fun h x xs y ys => ?_⟩
  rcases le_total x y with (xy | yx)
  · exact h xs ys xy
  · rw [eVariationOn.subsingleton, ENNReal.ofReal_of_nonpos]
    · exact mul_nonpos_of_nonneg_of_nonpos l.prop (sub_nonpos_of_le yx)
    · rintro z ⟨zs, xz, zy⟩ w ⟨ws, xw, wy⟩
      cases le_antisymm (zy.trans yx) xz
      cases le_antisymm (wy.trans yx) xw
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c382920ebc71da29aa4dc644bbddc05c5dc2dde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
