# logDeriv_Wreg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edc5c5039aad733ad0afb8dda12029f6595dc25c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e800b1d2-584a-8979-e692-2ea64a6f70de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97f2cf63-1032-0c32-a291-103bf911abd5",
  "kind": "theorem",
  "lexical_name": "logDeriv_Wreg",
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
  "slug": "logderiv-wreg--2e7a09d785dc43ef19f59176",
  "source": {
    "blob": "edc5c5039aad733ad0afb8dda12029f6595dc25c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 331,
    "path": "GRWTSK/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e7a09d785dc43ef19f5917608a9c42d0a6ec73bc5c0f5d094cb1993f8470ccd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97f2cf63-1032-0c32-a291-103bf911abd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_Wreg {s : ℂ} (hs : s ∈ stripReg) (hW : hardyW s ≠ 0) :
    logDeriv Wreg s = logDeriv polarPoly s + logDeriv hardyW s := by
  obtain ⟨hre, hre', h0, h1⟩ := hs
  have hev := Wreg_eventuallyEq h0 h1
  have e1 : logDeriv Wreg s = logDeriv (fun z => polarPoly z * hardyW z) s := by
    rw [logDeriv_apply, logDeriv_apply, hev.deriv_eq, hev.eq_of_nhds]
  rw [e1]
  exact logDeriv_mul s (polarPoly_ne_zero h0 h1) hW (polarPoly_analyticAt s).differentiableAt
    (hardyW_analyticAt_of_mem ⟨hre, hre', h0, h1⟩).differentiableAt

end EFContour
end Hardy
end XiPrime
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poles/Variant863bcd34a4b82b68ba6d4baf131693f92f443cb1f17e0f1faacf4b9f40e6d734.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc5c5039aad733ad0afb8dda12029f6595dc25c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
