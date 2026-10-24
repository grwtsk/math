# terminates_of_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79ca4b66fb5dc3d384e9f9eec96d0f4bfafa1047",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ba9cda8-d99e-e68b-125a-8423c995bb68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c26227c9-c841-258b-3113-09e90fec30ee",
  "kind": "theorem",
  "lexical_name": "terminates_of_rat",
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
  "slug": "terminates-of-rat--2e91318414a724f63eb67033",
  "source": {
    "blob": "79ca4b66fb5dc3d384e9f9eec96d0f4bfafa1047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 306,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e91318414a724f63eb67033a91a58e4346a7dc2fbfdd7f3e2916060a9ca6456",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c26227c9-c841-258b-3113-09e90fec30ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminates_of_rat (q : ℚ) : (of q).Terminates :=
  Exists.elim (IntFractPair.exists_nth_stream_eq_none_of_rat q) fun n stream_nth_eq_none =>
    Exists.intro n
      (have : IntFractPair.stream q (n + 1) = none := IntFractPair.stream_isSeq q stream_nth_eq_none
      of_terminatedAt_n_iff_succ_nth_intFractPair_stream_eq_none.mpr this)

end TerminatesOfRat

/-- The continued fraction `GenContFract.of v` terminates if and only if `v ∈ ℚ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant9a88fd4546926bf1f98fcbc405c06c98a8abf46d1dbc7d7d5e2df500aa234c53.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79ca4b66fb5dc3d384e9f9eec96d0f4bfafa1047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
