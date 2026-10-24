# finiteZetaEulerProductComplex_expands_boundedSmoothNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2356a076b5db6e815983968dc05338251cb1f485",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50a6d8f0-fa15-3a0f-c225-a31254e48b94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58a61788-51ef-a57e-9699-7221da4fa672",
  "kind": "theorem",
  "lexical_name": "finiteZetaEulerProductComplex_expands_boundedSmoothNumbers",
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
  "slug": "finitezetaeulerproductcomplex-expands-boundedsmoothnumbers--25dfe662b9a8742a65b96263",
  "source": {
    "blob": "2356a076b5db6e815983968dc05338251cb1f485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25dfe662b9a8742a65b9626386eb2b1863ddfdbc60808470a5ec47243c482854",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58a61788-51ef-a57e-9699-7221da4fa672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteZetaEulerProductComplex_expands_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (s : Complex)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    finiteZetaEulerProductComplex S s K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n := by
  change
    finiteEulerProductOf (fun n => complexWeight s n) S K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n
  exact
    finiteEulerProductOf_expands_boundedSmoothNumbers
      (fun n => complexWeight s n)
      (complexWeight_completely_multiplicative s)
      S K hSprime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ComplexEulerProductFinite/Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2356a076b5db6e815983968dc05338251cb1f485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
