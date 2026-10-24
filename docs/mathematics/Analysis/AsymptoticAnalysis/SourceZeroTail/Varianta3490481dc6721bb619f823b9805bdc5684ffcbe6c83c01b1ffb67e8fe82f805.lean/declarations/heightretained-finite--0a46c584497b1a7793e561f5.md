# heightRetained_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c255a3c3-a521-7479-8d19-66121128cbf5",
  "kind": "theorem",
  "lexical_name": "heightRetained_finite",
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
  "slug": "heightretained-finite--0a46c584497b1a7793e561f5",
  "source": {
    "blob": "1a43053c6d7ff60e19aaafb0467dae7c10645d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 240,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a46c584497b1a7793e561f53b5a0a21e65f15fc4b85a3b682fe72c5bf27b295",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c255a3c3-a521-7479-8d19-66121128cbf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heightRetained_finite (T : ℝ) : Finite (HeightRetained T) := by
  have := zeroBallPoints_finite (T + 1)
  let B := Σ p : ZeroBallPoints (T + 1), Fin (multiplicity p.val)
  let f : HeightRetained T → B := fun o ↦ ⟨⟨o.val.1, by
    change ‖shiftedValue o.val‖ ≤ T + 1
    have hr : |(shiftedValue o.val).re| ≤ 1 / 2 :=
      abs_le.mpr ⟨(shiftedValue_strip o.val).1.le, (shiftedValue_strip o.val).2.le⟩
    have hi := o.property
    have hn := Complex.norm_le_abs_re_add_abs_im (shiftedValue o.val)
    linarith⟩, o.val.2⟩
  apply Finite.of_injective f
  intro o p h
  apply Subtype.ext
  exact congrArg (fun t : B ↦ (⟨t.1.val, t.2⟩ : ZeroOccurrence)) h

/-- Reindex the omitted occurrences by their radial shell offset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a43053c6d7ff60e19aaafb0467dae7c10645d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
