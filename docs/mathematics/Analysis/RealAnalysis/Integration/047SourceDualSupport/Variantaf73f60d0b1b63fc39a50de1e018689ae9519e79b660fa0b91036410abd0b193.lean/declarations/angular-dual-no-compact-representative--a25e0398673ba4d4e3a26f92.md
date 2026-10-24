# angular_dual_no_compact_representative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fa60e5ee92aa8ce790236b0645800e37574fe08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56fed826-db2c-facc-950b-dfa246d5396f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10a35dc7-00f9-eeef-cac6-4197a3089e5a",
  "kind": "theorem",
  "lexical_name": "angular_dual_no_compact_representative",
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
  "slug": "angular-dual-no-compact-representative--a25e0398673ba4d4e3a26f92",
  "source": {
    "blob": "5fa60e5ee92aa8ce790236b0645800e37574fe08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variantaf73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a25e0398673ba4d4e3a26f92b4da33aa4d16ecc4cc583ba83f88b73767638b1c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variantaf73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a35dc7-00f9-eeef-cac6-4197a3089e5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angular_dual_no_compact_representative (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) :
    ¬ ∃ g : ℝ → ℂ, HasCompactSupport g ∧
      (angularSignDuality f : ℝ → ℂ) =ᵐ[volume] g := by
  rintro ⟨g, hg, he⟩
  apply angular_dual_not_integrable A hA f hf
  exact (integrable_of_memLp_two_compact
    ((memLp_congr_ae he).mp (Lp.memLp (angularSignDuality f))) hg).congr he.symm
end FormalResearch.RiemannHypothesis.SourceDualSupport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variantaf73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/047SourceDualSupport/Variantaf73f60d0b1b63fc39a50de1e018689ae9519e79b660fa0b91036410abd0b193.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa60e5ee92aa8ce790236b0645800e37574fe08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
