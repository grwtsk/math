# singleton_one_of_algebraMap_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdc181f1-97f7-c0f7-870a-c9746cd9f736",
  "kind": "theorem",
  "lexical_name": "singleton_one_of_algebraMap_bijective",
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
  "slug": "singleton-one-of-algebramap-bijective--e9c5bab5b046c33fea8cf197",
  "source": {
    "blob": "5456111966d1c90879da68276d6db1edb51fddfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 270,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9c5bab5b046c33fea8cf1971cef7d5d06d1fc43a3e0e4eea31ecfc234941dfe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdc181f1-97f7-c0f7-870a-c9746cd9f736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singleton_one_of_algebraMap_bijective (h : Function.Surjective (algebraMap A B)) :
    IsCyclotomicExtension {1} A B :=
  singleton_one_of_bot_eq_top (surjective_algebraMap_iff.1 h).symm

variable (A B)

/-- Given `(f : B ≃ₐ[A] C)`, if `IsCyclotomicExtension S A B` then
`IsCyclotomicExtension S A C`. -/
protected
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantad2743883129b571b560a463454fc1d95464d75d9adb8c5788c82693156909bb.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5456111966d1c90879da68276d6db1edb51fddfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
