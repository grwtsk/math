# product_exponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cfe8dc7d513bcc3a74ebdee7f88713075b4bcd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81911957-2593-a6ab-f721-3e815ea63af5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b0b70f4-6e16-2064-4f0d-94b26148e426",
  "kind": "theorem",
  "lexical_name": "product_exponent",
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
  "slug": "product-exponent--479d39b8f66dc117542ab8de",
  "source": {
    "blob": "3cfe8dc7d513bcc3a74ebdee7f88713075b4bcd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:479d39b8f66dc117542ab8de9b52c7939428e4da78b8811781cb10647d1ef77e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b0b70f4-6e16-2064-4f0d-94b26148e426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_exponent (A C a b T σ : ℝ) (hT : 0 < T) :
    densityWeight A σ * envelope C a b T σ =
      (2*A*C*(Real.log (2*T))^b)*Real.exp (mixedExponent A a T σ) := by
  rw [envelope_exp C a b T σ hT]
  unfold densityWeight mixedExponent
  have he : (2*σ-1)*A+a*(1-σ)*Real.log (2*T) =
      2*A*(σ-1/2)+a*(1-σ)*Real.log (2*T) := by ring
  rw [he,Real.exp_add]
  ring

/-- This is conditional on the literal actual count for every integration sigma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DensitySubstitution/Variant736464bb72ed3bed51027a593a449622e9431a3bd24d772207447b9b560793b7.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cfe8dc7d513bcc3a74ebdee7f88713075b4bcd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
