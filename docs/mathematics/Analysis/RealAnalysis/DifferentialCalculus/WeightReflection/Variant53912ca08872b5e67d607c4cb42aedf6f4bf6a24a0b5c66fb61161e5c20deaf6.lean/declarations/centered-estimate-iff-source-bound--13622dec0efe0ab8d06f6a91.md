# centered_estimate_iff_source_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d0a97a5ce5c959ce2be9f99a35622594f2cdafd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfca4d32-d8ec-6adb-b1db-ead3b3246fce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a5bc62b-8a1a-c755-f66f-d5d814e68196",
  "kind": "theorem",
  "lexical_name": "centered_estimate_iff_source_bound",
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
  "slug": "centered-estimate-iff-source-bound--13622dec0efe0ab8d06f6a91",
  "source": {
    "blob": "2d0a97a5ce5c959ce2be9f99a35622594f2cdafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 283,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13622dec0efe0ab8d06f6a91fa1904df601afed4061034cee318efb546967a19",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a5bc62b-8a1a-c755-f66f-d5d814e68196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_estimate_iff_source_bound (r : DilationRealization)
    (hsector : ∀ A : Set.Ici (1 : ℝ), SectorIntegrability r A) :
    CenteredSignedEstimate r ↔ UniformSignedLowerBound r := by
  constructor
  · rintro ⟨B, hB, h⟩
    refine ⟨B, hB, fun A hA ↦ ?_⟩
    simpa only [← signed_pairing_eq_centered_value r ⟨A, hA⟩ (hsector ⟨A, hA⟩)] using
      h ⟨A, hA⟩
  · rintro ⟨B, hB, h⟩
    refine ⟨B, hB, fun A ↦ ?_⟩
    rw [← signed_pairing_eq_centered_value r A (hsector A)]
    exact h A A.property

end

end FormalResearch.SUCAS.WeightReflection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d0a97a5ce5c959ce2be9f99a35622594f2cdafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
