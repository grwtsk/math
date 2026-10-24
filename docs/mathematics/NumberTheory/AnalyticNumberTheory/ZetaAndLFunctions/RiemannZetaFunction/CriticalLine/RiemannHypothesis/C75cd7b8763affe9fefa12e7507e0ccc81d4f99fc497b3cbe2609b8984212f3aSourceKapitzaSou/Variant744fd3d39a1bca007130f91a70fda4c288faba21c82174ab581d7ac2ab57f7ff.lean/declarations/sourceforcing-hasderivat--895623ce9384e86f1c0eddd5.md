# sourceForcing_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b9d0d3-6fbc-3ca2-11c5-7936e04fa8a5",
  "kind": "theorem",
  "lexical_name": "sourceForcing_hasDerivAt",
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
  "slug": "sourceforcing-hasderivat--895623ce9384e86f1c0eddd5",
  "source": {
    "blob": "0399a614f48b66dc2dbd9d9720d7c8b2241b10ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant744fd3d39a1bca007130f91a70fda4c288faba21c82174ab581d7ac2ab57f7ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895623ce9384e86f1c0eddd528d481857f9c348852ed84d2928f9a17017a3f39",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant744fd3d39a1bca007130f91a70fda4c288faba21c82174ab581d7ac2ab57f7ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b9d0d3-6fbc-3ca2-11c5-7936e04fa8a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceForcing_hasDerivAt (A s : ℝ) :
    HasDerivAt (sourceForcing A) (endpointSlope A) s := by
  have ht := (hasDerivAt_const s (endpointValue A)).add
    (((hasDerivAt_const s (2 * A)).sub (hasDerivAt_id s)).const_mul (endpointSlope A))
  have hc := (hasDerivAt_const s (endpointSlope A - 1)).sub ht
  convert hc using 1 <;> first | rfl | simp only [zero_sub, mul_neg, mul_one]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant744fd3d39a1bca007130f91a70fda4c288faba21c82174ab581d7ac2ab57f7ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant744fd3d39a1bca007130f91a70fda4c288faba21c82174ab581d7ac2ab57f7ff.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0399a614f48b66dc2dbd9d9720d7c8b2241b10ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
