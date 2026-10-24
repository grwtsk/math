# corrected_transform_exact_pole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed503374-3df0-d5a8-4921-da83c2bdf7fb",
  "kind": "theorem",
  "lexical_name": "corrected_transform_exact_pole",
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
  "slug": "corrected-transform-exact-pole--e17f16843c05e6142c0eb120",
  "source": {
    "blob": "1308daae6d40ab972002d8ddd5ddfb489075e67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 250,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variante0789d6a9a67cc8ff0d8e70597d760eaf4423d1472f0ef5289c8da81f24802a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e17f16843c05e6142c0eb120264bbbc48c786dbcd1597ff3fb7404a4005970db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variante0789d6a9a67cc8ff0d8e70597d760eaf4423d1472f0ef5289c8da81f24802a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed503374-3df0-d5a8-4921-da83c2bdf7fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_transform_exact_pole
    (m : ℕ) (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    MeromorphicAt (correctedTransform m C)
        (2 * (p.val - 1 / 2)) ∧
      meromorphicOrderAt (correctedTransform m C)
        (2 * (p.val - 1 / 2)) = (-9 : ℤ) := by
  obtain ⟨_, _, _, _, horderLocal⟩ :=
    exact_pole_certificate
      (point_pair_principal_coefficient_ne_zero p)
      (corrected_transform_cleared_tendsto m C p hp)
      (correctedTransform_punctured_differentiable m C p hp)
  have htranslate :
      meromorphicOrderAt
          (fun w ↦
            correctedTransform m C
              (2 * (p.val - 1 / 2) + w))
          0 =
        meromorphicOrderAt (correctedTransform m C)
          (2 * (p.val - 1 / 2)) := by
    simpa only [zero_add, add_comm] using
      (meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
        (f := correctedTransform m C)
        (x := (0 : ℂ))
        (c := 2 * (p.val - 1 / 2)))
  have horder :
      meromorphicOrderAt (correctedTransform m C)
          (2 * (p.val - 1 / 2)) =
        (-9 : ℤ) :=
    htranslate.symm.trans horderLocal
  exact
    ⟨meromorphicAt_of_meromorphicOrderAt_ne_zero
        (by rw [horder]; norm_num),
      horder⟩

/-! ## Landau order contradiction -/

/-- Positivity of the actual corrected source forces nonnegative meromorphic
order at every positive complex point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variante0789d6a9a67cc8ff0d8e70597d760eaf4423d1472f0ef5289c8da81f24802a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variante0789d6a9a67cc8ff0d8e70597d760eaf4423d1472f0ef5289c8da81f24802a7.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1308daae6d40ab972002d8ddd5ddfb489075e67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
