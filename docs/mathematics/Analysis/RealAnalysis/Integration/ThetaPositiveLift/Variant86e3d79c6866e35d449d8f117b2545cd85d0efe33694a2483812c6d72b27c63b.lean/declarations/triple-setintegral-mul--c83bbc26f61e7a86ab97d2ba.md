# triple_setIntegral_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3031d26e-5859-1e00-4390-ad35bea7f695",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98885876-4053-b519-eafd-1cabe30ba4b5",
  "kind": "theorem",
  "lexical_name": "triple_setIntegral_mul",
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
  "slug": "triple-setintegral-mul--c83bbc26f61e7a86ab97d2ba",
  "source": {
    "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c83bbc26f61e7a86ab97d2bab8aba40fe854254c1f4d1715639f581932a37a47",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98885876-4053-b519-eafd-1cabe30ba4b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem triple_setIntegral_mul
    (f g h : ℝ → ℝ) (S T U : Set ℝ) :
    (∫ p in ((S ×ˢ T) ×ˢ U),
        f p.1.1 * g p.1.2 * h p.2
          ∂((volume.prod volume).prod volume)) =
      (∫ x in S, f x) * (∫ y in T, g y) * (∫ z in U, h z) := by
  calc
    _ = (∫ p in (S ×ˢ T), f p.1 * g p.2 ∂(volume.prod volume)) *
        (∫ z in U, h z) := by
      simpa [mul_assoc] using
        (setIntegral_prod_mul (μ := volume.prod volume) (ν := volume)
          (fun p : ℝ × ℝ => f p.1 * g p.2) h (S ×ˢ T) U)
    _ = _ := by
      rw [setIntegral_prod_mul (μ := volume) (ν := volume) f g S T]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f99fc53f2340308500a0932cba2d045d6032744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
