# gram_zero_of_interactionMask_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "254f1463bc3f6ddee59f37d17af44559ee34bd3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:daa5f0b4-bc00-bfbe-9b9c-7db35d0c3e8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9de9ff20-4c9f-900f-979c-daf9e50a2861",
  "kind": "theorem",
  "lexical_name": "gram_zero_of_interactionMask_false",
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
  "slug": "gram-zero-of-interactionmask-false--abcbfcbe0c11e7d9b9c808cf",
  "source": {
    "blob": "254f1463bc3f6ddee59f37d17af44559ee34bd3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variantc22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abcbfcbe0c11e7d9b9c808cfe16fba1e23691c5f503022d6640abe643b1b17e6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PolarizedGram/Variantc22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de9ff20-4c9f-900f-979c-daf9e50a2861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_zero_of_interactionMask_false {N : ℕ}
    {frame : ConductorThreeCoefficientPacketFrame N}
    (control : PolarizedInteractionControl frame)
    (hexact : control.IsExact) (left right : frame.Atom)
    (hmask : control.interactionMask left right = false) :
    packetGram frame left right = 0 := by
  have hnorm := control.gram_small_of_mask_false left right hmask
  rw [hexact] at hnorm
  simpa using (norm_eq_zero.mp (le_antisymm hnorm (norm_nonneg _)))

/-- Scale-uniform operator-norm conclusion sought from the signed `TT*`
argument.  This is a predicate, not an asserted theorem. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PolarizedGram/Variantc22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variantc22305c0ed4422d69577fb4d78d924302a62b9ce101407b9f0c5123a1f01ff4e.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `254f1463bc3f6ddee59f37d17af44559ee34bd3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
