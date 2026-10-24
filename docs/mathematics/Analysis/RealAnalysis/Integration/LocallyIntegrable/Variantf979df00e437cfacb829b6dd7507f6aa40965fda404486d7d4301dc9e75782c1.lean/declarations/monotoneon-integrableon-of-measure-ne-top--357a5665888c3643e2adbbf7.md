# MonotoneOn.integrableOn_of_measure_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f6d86266c6884982e01a2a77968b30dfd0b838b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c969a236-bf27-01c9-0ed8-cdde9f57b2a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d29e8035-d031-b7b8-fe6a-fd6be5fc6a75",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.integrableOn_of_measure_ne_top",
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
  "slug": "monotoneon-integrableon-of-measure-ne-top--357a5665888c3643e2adbbf7",
  "source": {
    "blob": "0f6d86266c6884982e01a2a77968b30dfd0b838b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 425,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variantf979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:357a5665888c3643e2adbbf70a887e3b564183b00fac86b3a90e8283fb5d8270",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variantf979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d29e8035-d031-b7b8-fe6a-fd6be5fc6a75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.integrableOn_of_measure_ne_top (hmono : MonotoneOn f s) {a b : X}
    (ha : IsLeast s a) (hb : IsGreatest s b) (hs : μ s ≠ ∞) (h's : MeasurableSet s) :
    IntegrableOn f s μ := by
  borelize E
  obtain rfl | _ := s.eq_empty_or_nonempty
  · exact integrableOn_empty
  have hbelow : BddBelow (f '' s) := ⟨f a, fun x ⟨y, hy, hyx⟩ => hyx ▸ hmono ha.1 hy (ha.2 hy)⟩
  have habove : BddAbove (f '' s) := ⟨f b, fun x ⟨y, hy, hyx⟩ => hyx ▸ hmono hy hb.1 (hb.2 hy)⟩
  have : Metric.Bounded (f '' s) := Metric.bounded_of_bddAbove_of_bddBelow habove hbelow
  rcases bounded_iff_forall_norm_le.mp this with ⟨C, hC⟩
  have A : IntegrableOn (fun _ => C) s μ := by
    simp only [hs.lt_top, integrableOn_const, or_true_iff]
  refine'
    Integrable.mono' A (aemeasurable_restrict_of_monotoneOn h's hmono).aestronglyMeasurable
      ((ae_restrict_iff' h's).mpr <| ae_of_all _ fun y hy => hC (f y) (mem_image_of_mem f hy))
#align monotone_on.integrable_on_of_measure_ne_top MonotoneOn.integrableOn_of_measure_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variantf979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variantf979df00e437cfacb829b6dd7507f6aa40965fda404486d7d4301dc9e75782c1.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f6d86266c6884982e01a2a77968b30dfd0b838b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
