# genuine_correlation_and_form_support_consistent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36ce04c597e40e711718f670053eaae46dd5c235",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46ecd9ba-1ae4-6f5d-387a-86b5fe965a6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9e975b7-c02b-956b-2506-1a3eed2d5c29",
  "kind": "theorem",
  "lexical_name": "genuine_correlation_and_form_support_consistent",
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
  "slug": "genuine-correlation-and-form-support-consistent--d8b65f9b863c6b2842a5d4b1",
  "source": {
    "blob": "36ce04c597e40e711718f670053eaae46dd5c235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8b65f9b863c6b2842a5d4b1709b0125e74216f581c706e203b93f2b3f5e3264",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e975b7-c02b-956b-2506-1a3eed2d5c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genuine_correlation_and_form_support_consistent {f : ℝ → ℝ} {A R : ℝ}
    (hf : Continuous f) (hcompact : HasCompactSupport f)
    (hsupport : Function.support f ⊆ Icc (-A) A) (hAR : A ≤ R) :
    (∀ t : ℝ, Integrable (fun x ↦ f x * f (x - t)) volume) ∧
      realArithmeticForm R f = realArithmeticForm A f :=
  ⟨correlation_integrand_integrable hf hcompact,
    realArithmeticForm_support_consistent hsupport hAR⟩

end

end ZeroFormSupportProbe

#check ZeroFormSupportProbe.correlation_integrand_integrable
#check ZeroFormSupportProbe.correlation_zero_of_two_mul_radius_le
#check ZeroFormSupportProbe.mem_primeCutoff_iff
#check ZeroFormSupportProbe.primeCutoff_mono
#check ZeroFormSupportProbe.prime_sum_support_consistent
#check ZeroFormSupportProbe.realArithmeticForm_support_consistent
#check ZeroFormSupportProbe.genuine_correlation_and_form_support_consistent

#print axioms ZeroFormSupportProbe.correlation_integrand_integrable
#print axioms ZeroFormSupportProbe.correlation_zero_of_two_mul_radius_le
#print axioms ZeroFormSupportProbe.mem_primeCutoff_iff
#print axioms ZeroFormSupportProbe.primeCutoff_mono
#print axioms ZeroFormSupportProbe.prime_sum_support_consistent
#print axioms ZeroFormSupportProbe.realArithmeticForm_support_consistent
#print axioms ZeroFormSupportProbe.genuine_correlation_and_form_support_consistent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroFormSupportProbe/Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36ce04c597e40e711718f670053eaae46dd5c235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
