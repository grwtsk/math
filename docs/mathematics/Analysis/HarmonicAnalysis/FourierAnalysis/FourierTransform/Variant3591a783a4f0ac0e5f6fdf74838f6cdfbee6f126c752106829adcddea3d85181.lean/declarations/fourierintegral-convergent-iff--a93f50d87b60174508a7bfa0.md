# fourierIntegral_convergent_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10918865f469b879947ae513d22e3a34776ed4e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db75951f-71c1-2262-7139-e0e8796aa591",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c533c2e2-9cb1-cf7a-2c6f-65c1f02573c1",
  "kind": "theorem",
  "lexical_name": "fourierIntegral_convergent_iff",
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
  "slug": "fourierintegral-convergent-iff--a93f50d87b60174508a7bfa0",
  "source": {
    "blob": "10918865f469b879947ae513d22e3a34776ed4e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 122,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a93f50d87b60174508a7bfa0b2991dc7168fdf34b0977b3876f213d4b2bd86b3",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c533c2e2-9cb1-cf7a-2c6f-65c1f02573c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierIntegral_convergent_iff (he : Continuous e)
    (hL : Continuous fun p : V × W ↦ L p.1 p.2) {f : V → E} (w : W) :
    Integrable (fun v : V ↦ e (-L v w) • f v) μ ↔ Integrable f μ := by
  -- first prove one-way implication
  have aux {g : V → E} (hg : Integrable g μ) (x : W) :
      Integrable (fun v : V ↦ e (-L v x) • g v) μ := by
    have c : Continuous fun v ↦ e (-L v x) := he.comp (hL.comp (.prodMk_left _)).neg
    simp_rw [← integrable_norm_iff (c.aestronglyMeasurable.smul hg.1), Circle.norm_smul]
    exact hg.norm
  -- then use it for both directions
  refine ⟨fun hf ↦ ?_, fun hf ↦ aux hf w⟩
  have := aux hf (-w)
  simp_rw [← mul_smul (e _) (e _) (f _), ← e.map_add_eq_mul, LinearMap.map_neg, neg_add_cancel,
    e.map_zero_eq_one, one_smul] at this -- the `(e _)` speeds up elaboration considerably
  exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant3591a783a4f0ac0e5f6fdf74838f6cdfbee6f126c752106829adcddea3d85181.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10918865f469b879947ae513d22e3a34776ed4e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
