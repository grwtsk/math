# corrected_source_checkpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23388f4f-3a6b-b750-2991-292b33618fb8",
  "kind": "theorem",
  "lexical_name": "corrected_source_checkpoint",
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
  "slug": "corrected-source-checkpoint--6845688247b2e447e28798b2",
  "source": {
    "blob": "82ebcdc67d90921b231467b6b036617ac7aecb13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 309,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6845688247b2e447e28798b22580e0fd9138a9f8d9e54aa9336a04a57905517f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23388f4f-3a6b-b750-2991-292b33618fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_source_checkpoint :
    CorrectedSourceCheckpoint := by
  intro h
  obtain ⟨C, hC, hpos⟩ :=
    nonnegative_corrected_source_of_uniform h
  exact ⟨C, hC, hpos,
    fun s hs ↦
      ⟨corrected_source_integrable C s hs,
        integral_corrected_source C s hs⟩,
    correctedTransform_meromorphic C,
    correctedTransform_analytic_positive_real C⟩

end
end FormalResearch.RiemannHypothesis.Landau.Correction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant2ba7ae8948229be447ef3073a2925b0767f6c360df67704b473d60649b65e1c2.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ebcdc67d90921b231467b6b036617ac7aecb13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
