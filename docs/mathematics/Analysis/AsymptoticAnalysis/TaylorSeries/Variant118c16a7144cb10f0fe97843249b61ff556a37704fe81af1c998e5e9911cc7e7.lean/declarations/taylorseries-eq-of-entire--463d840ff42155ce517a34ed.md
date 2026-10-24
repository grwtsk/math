# taylorSeries_eq_of_entire

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f838b289451936c60ca4e9847d1a718bc36804e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b856d03e-8b96-24b6-9b7e-ebe347f27e42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62927aec-30d4-425f-f320-8dd5a567cd2f",
  "kind": "lemma",
  "lexical_name": "taylorSeries_eq_of_entire",
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
  "slug": "taylorseries-eq-of-entire--463d840ff42155ce517a34ed",
  "source": {
    "blob": "f838b289451936c60ca4e9847d1a718bc36804e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 128,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:463d840ff42155ce517a34ed7c953e3f8945479a9f3368c9f76936ce57925eac",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62927aec-30d4-425f-f320-8dd5a567cd2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma taylorSeries_eq_of_entire :
    ∑' n : ℕ, (n ! : ℂ)⁻¹ • (z - c) ^ n • iteratedDeriv n f c = f z :=
  (hasSum_taylorSeries_of_entire hf c z).tsum_eq

/-- A function that is complex differentiable on the complex plane is given by evaluating
its Taylor series at any point `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f838b289451936c60ca4e9847d1a718bc36804e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
