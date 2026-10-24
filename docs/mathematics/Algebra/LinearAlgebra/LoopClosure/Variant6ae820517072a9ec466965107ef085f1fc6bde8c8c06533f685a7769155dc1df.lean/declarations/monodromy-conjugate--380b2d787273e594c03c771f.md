# monodromy_conjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94d8c3c728ea880d5c5d91b5d37ce8a91e727556",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:972f5275-915b-4b8c-0c43-c771a9bd9dde",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5828b538-d18d-c685-0c1d-a6a299d4763a",
  "kind": "theorem",
  "lexical_name": "monodromy_conjugate",
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
  "slug": "monodromy-conjugate--380b2d787273e594c03c771f",
  "source": {
    "blob": "94d8c3c728ea880d5c5d91b5d37ce8a91e727556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 123,
    "path": "GRWTSK/Algebra/LinearAlgebra/LoopClosure/Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:380b2d787273e594c03c771faf1fd9dcbab17d8421f3498b02330694301db3a4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LoopClosure/Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5828b538-d18d-c685-0c1d-a6a299d4763a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monodromy_conjugate
    (closure : CertifiedLoopClosure initial final) :
    final.monodromy.toLinearMap =
      (closure.stateIsomorphism.toLinearMap.comp
        initial.monodromy.toLinearMap).comp
          closure.stateIsomorphism.symm.toLinearMap := by
  apply LinearMap.ext
  intro point
  have commuting :=
    LinearMap.congr_fun
      closure.monodromyCommutes
      (closure.stateIsomorphism.symm point)
  simpa using commuting.symm

/--
The determinant equality is a theorem derived from actual monodromy conjugacy,
not a field and not a digest comparison.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LoopClosure/Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LoopClosure/Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94d8c3c728ea880d5c5d91b5d37ce8a91e727556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
