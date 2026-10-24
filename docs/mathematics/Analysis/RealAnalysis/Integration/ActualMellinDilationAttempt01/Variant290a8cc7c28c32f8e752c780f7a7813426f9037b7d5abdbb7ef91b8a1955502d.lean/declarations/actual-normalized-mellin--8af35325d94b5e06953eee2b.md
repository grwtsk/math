# actual_normalized_mellin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf14ebbb-68a4-73f0-2cec-e48acb559283",
  "kind": "theorem",
  "lexical_name": "actual_normalized_mellin",
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
  "slug": "actual-normalized-mellin--8af35325d94b5e06953eee2b",
  "source": {
    "blob": "2bbcfb8fcad6c9061fd5331b9b3b0ca74caa4c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant290a8cc7c28c32f8e752c780f7a7813426f9037b7d5abdbb7ef91b8a1955502d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8af35325d94b5e06953eee2bdd4f65ad400cfd36ff844c9cc9e8f91a069c2012",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant290a8cc7c28c32f8e752c780f7a7813426f9037b7d5abdbb7ef91b8a1955502d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf14ebbb-68a4-73f0-2cec-e48acb559283`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_normalized_mellin (A a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (dilateFunc a (actualComplexOperator A)) s =
      (a:ℂ)^((1:ℂ)/2-s) * mellin (actualComplexOperator A) s :=
  mellin_normalized_func a ha (actualComplexOperator A) s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant290a8cc7c28c32f8e752c780f7a7813426f9037b7d5abdbb7ef91b8a1955502d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant290a8cc7c28c32f8e752c780f7a7813426f9037b7d5abdbb7ef91b8a1955502d.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bbcfb8fcad6c9061fd5331b9b3b0ca74caa4c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
