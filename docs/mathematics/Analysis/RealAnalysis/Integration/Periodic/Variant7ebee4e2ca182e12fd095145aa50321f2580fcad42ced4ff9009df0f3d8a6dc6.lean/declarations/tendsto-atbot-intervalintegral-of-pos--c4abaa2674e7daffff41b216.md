# tendsto_atBot_intervalIntegral_of_pos'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b98d43e3ae423759ab05972f2cf37c281ff1e9c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c11aa8d8-14d8-bb7f-a662-efb62d230175",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13f9f555-f67d-7968-c68c-b8583d98ae10",
  "kind": "theorem",
  "lexical_name": "tendsto_atBot_intervalIntegral_of_pos'",
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
  "slug": "tendsto-atbot-intervalintegral-of-pos--c4abaa2674e7daffff41b216",
  "source": {
    "blob": "b98d43e3ae423759ab05972f2cf37c281ff1e9c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 405,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4abaa2674e7daffff41b21686d6f9d2dd129095572b6e28ef7bee0de5246b55",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13f9f555-f67d-7968-c68c-b8583d98ae10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atBot_intervalIntegral_of_pos'
    (h_int : IntervalIntegrable g MeasureSpace.volume 0 T) (h₀ : ∀ x, 0 < g x) (hT : 0 < T) :
    Tendsto (fun t => ∫ x in (0)..t, g x) atBot atBot := by
  exact hg.tendsto_atBot_intervalIntegral_of_pos (intervalIntegral_pos_of_pos h_int h₀ hT) hT

end RealValued

end Periodic

end Function
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Periodic/Variant7ebee4e2ca182e12fd095145aa50321f2580fcad42ced4ff9009df0f3d8a6dc6.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b98d43e3ae423759ab05972f2cf37c281ff1e9c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
