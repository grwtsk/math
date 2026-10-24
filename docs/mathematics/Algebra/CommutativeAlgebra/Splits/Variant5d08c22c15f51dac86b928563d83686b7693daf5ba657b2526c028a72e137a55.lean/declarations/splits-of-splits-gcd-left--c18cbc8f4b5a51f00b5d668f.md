# splits_of_splits_gcd_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d40608a998a73335ef23ba962082ff8a7702857e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a96f6cfa-7c0a-27fd-5224-bae9dddd3c3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:145ff481-e20f-a474-4758-a1d543db3ab8",
  "kind": "theorem",
  "lexical_name": "splits_of_splits_gcd_left",
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
  "slug": "splits-of-splits-gcd-left--c18cbc8f4b5a51f00b5d668f",
  "source": {
    "blob": "d40608a998a73335ef23ba962082ff8a7702857e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 288,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c18cbc8f4b5a51f00b5d668fa8dc4d8b99f02be6f473668bfb3f480e0944cca0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variant5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:145ff481-e20f-a474-4758-a1d543db3ab8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_of_splits_gcd_left [DecidableEq K] {f g : K[X]} (hf0 : f ≠ 0) (hf : Splits i f) :
    Splits i (EuclideanDomain.gcd f g) :=
  Polynomial.splits_of_splits_of_dvd i hf0 hf (EuclideanDomain.gcd_dvd_left f g)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40608a998a73335ef23ba962082ff8a7702857e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
