# continuousOn_cfcₙ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d29e5a98-2f6a-1649-8487-dda1afc22106",
  "kind": "theorem",
  "lexical_name": "continuousOn_cfcₙ",
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
  "slug": "continuouson-cfc--cd3a08138b38d9cb9cb6d9f3",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 778,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd3a08138b38d9cb9cb6d9f3ae1ccc3d6fa0590e45ccc34f67ddf59be16746b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d29e5a98-2f6a-1649-8487-dda1afc22106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 778–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_cfcₙ {s : Set 𝕜} (hs : IsCompact s) (f : 𝕜 → 𝕜)
    (hf : ContinuousOn f s := by cfc_cont_tac) (hf0 : f 0 = 0 := by cfc_zero_tac) :
    ContinuousOn (cfcₙ f · : A → A) {a | p a ∧ quasispectrum 𝕜 a ⊆ s} := by
  by_cases hs0 : 0 ∈ s
  · rw [continuousOn_iff_continuous_domRestrict]
    convert!
      continuous_cfcₙHomSuperset_left hs (hs0 := ⟨hs0⟩) ⟨⟨_, hf.domRestrict⟩, hf0⟩ (X :=
        {a : A | p a ∧ quasispectrum 𝕜 a ⊆ s}) continuous_subtype_val (fun x ↦ x.2.2) with
      x
    rw [cfcₙHomSuperset_apply, Set.domRestrict_apply, cfcₙ_apply _ _ (hf.mono x.2.2) hf0 x.2.1]
    congr!
  · convert! continuousOn_empty _
    rw [Set.eq_empty_iff_forall_notMem]
    exact fun a ha ↦ hs0 <| ha.2 <| quasispectrum.zero_mem 𝕜 a

open UniformOnFun in
/-- Let `s : Set 𝕜` be a compact set and consider pairs `(f, a) : (𝕜 → 𝕜) × A` where `f` is
continuous on `s`, maps zero itself, and `quasispectrum 𝕜 a ⊆ s` and `a` satisfies the predicate
`p a` for the continuous functional calculus.

Then `cfcₙ` is jointly continuous in both variables (i.e., continuous in its uncurried form) on this
set of pairs when the function space is equipped with the topology of uniform convergence on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L778).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
