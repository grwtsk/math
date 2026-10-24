# detShift_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7f5bc41-1f40-25a5-76b2-fae10e861541",
  "kind": "lemma",
  "lexical_name": "detShift_zero_iff",
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
  "slug": "detshift-zero-iff--f243f3fdb683e76f21567339",
  "source": {
    "blob": "471b8e7a45c35c54ec318b25db2313d5c2eaf746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f243f3fdb683e76f2156733900d782ba9245de2eb09838f83136d92db146308d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7f5bc41-1f40-25a5-76b2-fae10e861541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma detShift_zero_iff (γ : ℂ) :
    detShift (P := P) γ = 0 ↔
      ((1 / 4 : ℂ) + γ ^ 2) ∈ spectrum ℂ (L : E →L[ℂ] E) := by
  simpa using
    shift_zero_iff
      (T     := (L : E →L[ℂ] E))
      (hComp := Schrodinger.L_compactResolvent P)
      ((1 / 4 : ℂ) + γ ^ 2)

end SpectralDet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Determinant/Variantf98c3bda0546df3b2d72bc1add12982ac782fb24de22c5112316504212a4bf04.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `471b8e7a45c35c54ec318b25db2313d5c2eaf746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
