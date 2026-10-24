# density_toReal_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "709ec6c111bb2404fa2ce71d75a23150fda9886a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7289e355-608f-1b00-3d6f-417fcbe09d1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb90b952-c3c3-3f5c-819c-752095a3359e",
  "kind": "theorem",
  "lexical_name": "density_toReal_ae",
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
  "slug": "density-toreal-ae--4c48ed83e94692d38226a777",
  "source": {
    "blob": "709ec6c111bb2404fa2ce71d75a23150fda9886a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variant59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c48ed83e94692d38226a77732e59f0ea82c9f2bce781e30945b1ff9d40b72d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variant59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb90b952-c3c3-3f5c-819c-752095a3359e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_toReal_ae
    (m : ℕ) (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource m C A) :
    ∀ᵐ A ∂Bridge.baseMeasure,
      (ENNReal.ofReal (correctedSource m C A)).toReal =
        correctedSource m C A := by
  filter_upwards [ae_restrict_mem measurableSet_Ioi]
    with A hA
  exact ENNReal.toReal_ofReal (hpos A hA.le)

/-- Every point seen by the positive source measure lies above radius one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variant59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variant59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `709ec6c111bb2404fa2ce71d75a23150fda9886a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
