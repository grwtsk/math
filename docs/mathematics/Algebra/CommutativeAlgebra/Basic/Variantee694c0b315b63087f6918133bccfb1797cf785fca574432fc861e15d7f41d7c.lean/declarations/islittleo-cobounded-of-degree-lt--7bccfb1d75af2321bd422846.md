# isLittleO_cobounded_of_degree_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea47ed65a027729e75532e896cac84790169d110",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fa2e1d9-bd18-2bf1-a18b-a2ff53716979",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13cd5f36-0713-d487-d208-225d1fdda6eb",
  "kind": "theorem",
  "lexical_name": "isLittleO_cobounded_of_degree_lt",
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
  "slug": "islittleo-cobounded-of-degree-lt--7bccfb1d75af2321bd422846",
  "source": {
    "blob": "ea47ed65a027729e75532e896cac84790169d110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 332,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bccfb1d75af2321bd422846ec20830e86cd986ac09b00302af65529a94cb7b3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13cd5f36-0713-d487-d208-225d1fdda6eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_cobounded_of_degree_lt (h : P.degree < Q.degree) :
    P.eval =o[cobounded R] Q.eval := by
  by_cases hP : P = 0
  · simp [hP]
  · refine isEquivalent_cobounded_leading_monomial.trans_isLittleO <|
      ((IsLittleO.const_mul_right ?_ ?_).const_mul_left _).trans_isEquivalent
        isEquivalent_cobounded_leading_monomial.symm
    · exact leadingCoeff_ne_zero.mpr (ne_zero_of_degree_gt h)
    · exact isLittleO_pow_pow_cobounded_of_lt (natDegree_lt_natDegree hP h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea47ed65a027729e75532e896cac84790169d110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
