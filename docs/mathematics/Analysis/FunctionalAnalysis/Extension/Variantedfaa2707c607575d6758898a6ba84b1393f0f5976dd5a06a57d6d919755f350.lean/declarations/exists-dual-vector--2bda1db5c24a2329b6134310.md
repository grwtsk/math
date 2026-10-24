# exists_dual_vector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f790b319-6833-87f3-0de5-ff47332cb2c9",
  "kind": "theorem",
  "lexical_name": "exists_dual_vector",
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
  "slug": "exists-dual-vector--2bda1db5c24a2329b6134310",
  "source": {
    "blob": "a3d4979779b2a9d910338af31f91bef8913be95b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 132,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bda1db5c24a2329b61343106e2d6e345c05c0e8324d7b42153d656e19ebf688",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f790b319-6833-87f3-0de5-ff47332cb2c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_dual_vector (x : E) (h : x ≠ 0) : ∃ g : E →L[𝕜] 𝕜, ‖g‖ = 1 ∧ g x = ‖x‖ := by
  let p : Submodule 𝕜 E := 𝕜 ∙ x
  let f := (‖x‖ : 𝕜) • coord 𝕜 x h
  obtain ⟨g, hg⟩ := exists_extension_norm_eq p f
  refine' ⟨g, _, _⟩
  · rw [hg.2, coord_norm']
  · calc
      g x = g (⟨x, mem_span_singleton_self x⟩ : 𝕜 ∙ x) := by rw [coe_mk]
      _ = ((‖x‖ : 𝕜) • coord 𝕜 x h) (⟨x, mem_span_singleton_self x⟩ : 𝕜 ∙ x) := by rw [← hg.1]
      _ = ‖x‖ := by simp
#align exists_dual_vector exists_dual_vector

/-- Variant of Hahn-Banach, eliminating the hypothesis that `x` be nonzero, and choosing
    the dual element arbitrarily when `x = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extension/Variantedfaa2707c607575d6758898a6ba84b1393f0f5976dd5a06a57d6d919755f350.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d4979779b2a9d910338af31f91bef8913be95b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
