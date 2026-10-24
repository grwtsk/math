# tupleRationalKey_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83bd100d-307b-628b-8b62-f0d675161123",
  "kind": "theorem",
  "lexical_name": "tupleRationalKey_pos",
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
  "slug": "tuplerationalkey-pos--9471eeb77555654b3b72b9c5",
  "source": {
    "blob": "fbf9bd8c960a0064b67442a7a5958cfe3c420c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTupleRationalPackets/Variant907489b98de210efe68be71a5176e5e1cff6746a37e9fd247b785910478a9203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9471eeb77555654b3b72b9c53a8112143e4dfd4daec0c8958fcf59631f9098fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTupleRationalPackets/Variant907489b98de210efe68be71a5176e5e1cff6746a37e9fd247b785910478a9203.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83bd100d-307b-628b-8b62-f0d675161123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tupleRationalKey_pos {ι : Type u} (label : ι → ℚ)
    (hlabel : ∀ i, 0 < label i) (j : ℕ) (p : SignTuple ι j) :
    0 < tupleRationalKey label j p := by
  induction j with
  | zero => simp only [tupleRationalKey, zero_lt_one]
  | succ j ih =>
    simp only [tupleRationalKey]
    split_ifs
    · exact mul_pos (hlabel p.1) (ih p.2.2)
    · exact mul_pos (inv_pos.mpr (hlabel p.1)) (ih p.2.2)

/-- The complete signed logarithmic shift is transported exactly by the rational key. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTupleRationalPackets/Variant907489b98de210efe68be71a5176e5e1cff6746a37e9fd247b785910478a9203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTupleRationalPackets/Variant907489b98de210efe68be71a5176e5e1cff6746a37e9fd247b785910478a9203.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf9bd8c960a0064b67442a7a5958cfe3c420c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
