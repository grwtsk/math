# Functor.map_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c987ed1be10923027233af41faa78779108e1125",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7aee65ffd017978662f01ddc90932fbbe50379ee36267967d29bb7cf4cb5d2e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d9fe7a4-e380-1e47-2071-e95f429b3eba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c28a8f21-793c-61be-3cdf-e2c9d8e09cd6",
  "kind": "theorem",
  "lexical_name": "Functor.map_unit",
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
  "slug": "functor-map-unit--f95f79ead853c24edfc94717",
  "source": {
    "blob": "c987ed1be10923027233af41faa78779108e1125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7aee65ffd017978662f01ddc90932fbbe50379ee36267967d29bb7cf4cb5d2e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f95f79ead853c24edfc947170f6a8ff1b46b86bae7e8279b3cb5660ec4329b2b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7aee65ffd017978662f01ddc90932fbbe50379ee36267967d29bb7cf4cb5d2e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c28a8f21-793c-61be-3cdf-e2c9d8e09cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.map_unit [Functor f] [LawfulFunctor f] {a : f PUnit} : (fun _ => PUnit.unit) <$> a = a := by
  simp

/--
An applicative functor satisfies the laws of an applicative functor.

The `Applicative` class contains the operations of an applicative functor, but does not require that
instances prove they satisfy the laws of an applicative functor. A `LawfulApplicative` instance
includes proofs that the laws are satisfied.

Because `Applicative` instances may provide optimized implementations of `seqLeft` and `seqRight`,
`LawfulApplicative` instances must also prove that the optimized implementation is equivalent to the
standard implementation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7aee65ffd017978662f01ddc90932fbbe50379ee36267967d29bb7cf4cb5d2e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7aee65ffd017978662f01ddc90932fbbe50379ee36267967d29bb7cf4cb5d2e0.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c987ed1be10923027233af41faa78779108e1125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
