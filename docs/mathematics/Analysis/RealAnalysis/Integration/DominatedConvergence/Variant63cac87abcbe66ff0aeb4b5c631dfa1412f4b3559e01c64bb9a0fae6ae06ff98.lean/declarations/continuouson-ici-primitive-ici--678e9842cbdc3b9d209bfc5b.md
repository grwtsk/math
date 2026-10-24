# continuousOn_Ici_primitive_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eed8cf39-6f42-d207-8cc9-fecbe9d56edd",
  "kind": "theorem",
  "lexical_name": "continuousOn_Ici_primitive_Ici",
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
  "slug": "continuouson-ici-primitive-ici--678e9842cbdc3b9d209bfc5b",
  "source": {
    "blob": "4c9c2804830d9693d63c4708e83da3dcc9ccf9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 702,
    "line": 698,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:678e9842cbdc3b9d209bfc5bb0345b6e33edfd633a313b614092fbf451cd61f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eed8cf39-6f42-d207-8cc9-fecbe9d56edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 698–702.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_Ici_primitive_Ici [NullSingletonClass μ] {a₀ : ℝ}
    (hf : IntegrableOn f (Ici a₀) μ) : ContinuousOn (fun b ↦ ∫ x in Ici b, f x ∂μ) (Ici a₀) := by
  simp_rw [integral_Ici_eq_integral_Ioi]
  exact (hf.mono_set Ioi_subset_Ici_self).continuousOn_Ici_primitive_Ioi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean#L698).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9c2804830d9693d63c4708e83da3dcc9ccf9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
