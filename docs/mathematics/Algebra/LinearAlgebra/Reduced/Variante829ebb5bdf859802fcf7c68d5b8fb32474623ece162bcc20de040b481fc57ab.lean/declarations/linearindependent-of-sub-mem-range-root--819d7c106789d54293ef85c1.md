# linearIndependent_of_sub_mem_range_root'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05cb121520c3b58e20d1271be07bd4d147c3d14d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ef3fe61-648c-2b9d-33c2-2207d1a7c232",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c4b5a25-be91-2ef5-05eb-3d217bff0360",
  "kind": "lemma",
  "lexical_name": "linearIndependent_of_sub_mem_range_root'",
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
  "slug": "linearindependent-of-sub-mem-range-root--819d7c106789d54293ef85c1",
  "source": {
    "blob": "05cb121520c3b58e20d1271be07bd4d147c3d14d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:819d7c106789d54293ef85c12ff226454c2481ca6f07260202bf49f9ce4f72bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c4b5a25-be91-2ef5-05eb-3d217bff0360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearIndependent_of_sub_mem_range_root' [CharZero R] [IsDomain R] [P.IsReduced] {i j : ι}
    (h : P.root i - P.root j ∈ range P.root) :
    LinearIndependent R ![P.root i, P.root j] :=
  have _i := P.reflexive_left
  have _i : NoZeroSMulDivisors ℤ M := NoZeroSMulDivisors.int_of_charZero R M
  P.linearIndependent_of_sub_mem_range_root h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05cb121520c3b58e20d1271be07bd4d147c3d14d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
