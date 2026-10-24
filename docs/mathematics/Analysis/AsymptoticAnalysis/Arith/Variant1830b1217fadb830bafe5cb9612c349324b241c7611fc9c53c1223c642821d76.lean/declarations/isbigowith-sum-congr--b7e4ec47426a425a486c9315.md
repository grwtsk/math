# IsBigOWith.sum_congr'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be0969a9-4aca-2d4f-e8d6-9e46ecc4e1b3",
  "kind": "theorem",
  "lexical_name": "IsBigOWith.sum_congr'",
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
  "slug": "isbigowith-sum-congr--b7e4ec47426a425a486c9315",
  "source": {
    "blob": "cb3fbeb6991be59732f8c65689acded42eb38e8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 446,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7e4ec47426a425a486c9315619ce9a27a102d5d87741d18426ab7445799b7ec",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be0969a9-4aca-2d4f-e8d6-9e46ecc4e1b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBigOWith.sum_congr' {C : ℝ} {i : α → Finset ι}
    (hAB : IsBigOWith C (⊤ ×ˢ l) A.uncurry B.uncurry) :
    IsBigOWith C l (fun H => ∑ j ∈ i H, A j H) (fun H => ∑ j ∈ i H, ‖B j H‖) := by
  simp only [IsBigOWith_def] at *
  obtain ⟨s₁, hs₁, s₂, hs₂, hbound⟩ := Filter.eventually_prod_iff.mp hAB
  filter_upwards [hs₂] with H hH
  calc
    ‖∑ j ∈ i H, A j H‖ ≤ ∑ j ∈ i H, ‖A j H‖ := norm_sum_le ..
    _ ≤ ∑ j ∈ i H, C * ‖B j H‖ :=
        Finset.sum_le_sum fun j _ => hbound (Filter.eventually_top.mp hs₁ j) hH
    _ = C * ∑ j ∈ i H, ‖B j H‖ := (Finset.mul_sum ..).symm
    _ = C * ‖∑ j ∈ i H, ‖B j H‖‖ := by
        congr; rw [Real.norm_of_nonneg (Finset.sum_nonneg (fun _ _ ↦ norm_nonneg _))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variant1830b1217fadb830bafe5cb9612c349324b241c7611fc9c53c1223c642821d76.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb3fbeb6991be59732f8c65689acded42eb38e8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
