# sourceForcing_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:649aaaa1-40c5-2fce-b4ba-98df31c809cf",
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
  "slug": "sourceforcing-hasderivat--a0b2ea3442cd900cf5ea9a3f",
  "source": {
    "blob": "25cefe05a0bce660358ef594d9970023d07b85cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant6d5b21c0bbfa127d9f762c6a8a7d446b47d34ee43bb6faee175ab15ea5cf175b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0b2ea3442cd900cf5ea9a3f104ce7e7b46f5355de8992f9d8713026174db796",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant6d5b21c0bbfa127d9f762c6a8a7d446b47d34ee43bb6faee175ab15ea5cf175b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:649aaaa1-40c5-2fce-b4ba-98df31c809cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–45.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant6d5b21c0bbfa127d9f762c6a8a7d446b47d34ee43bb6faee175ab15ea5cf175b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant6d5b21c0bbfa127d9f762c6a8a7d446b47d34ee43bb6faee175ab15ea5cf175b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25cefe05a0bce660358ef594d9970023d07b85cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
