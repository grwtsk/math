# CountableAB4.of_hasExactColimitsOfShape_nat_and_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7571fc9bf8e5b629698c7ef419cf64612c16520",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2639cb57-705c-7378-52c9-73dc146075a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:615d713b-f84b-cfbe-7328-225019864b61",
  "kind": "lemma",
  "lexical_name": "CountableAB4.of_hasExactColimitsOfShape_nat_and_finite",
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
  "slug": "countableab4-of-hasexactcolimitsofshape-nat-and-finite--1b39dfe4b743c5b0c6a6566c",
  "source": {
    "blob": "c7571fc9bf8e5b629698c7ef419cf64612c16520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 484,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b39dfe4b743c5b0c6a6566c69aaa8ddf221bab2d1d0a4a2d920a5b65900bf8e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:615d713b-f84b-cfbe-7328-225019864b61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CountableAB4.of_hasExactColimitsOfShape_nat_and_finite [HasCountableCoproducts C]
    [HasFiniteLimits C] [∀ (J : Type) [Finite J], HasExactColimitsOfShape (Discrete J) C]
    [HasExactColimitsOfShape (Discrete ℕ) C] :
    CountableAB4 C where
  ofShape J := by
    by_cases h : Finite J
    · infer_instance
    · have : Infinite J := ⟨h⟩
      let _ := Encodable.ofCountable J
      let _ := Denumerable.ofEncodableOfInfinite J
      exact hasExactColimitsOfShape_of_final C (Discrete.equivalence (Denumerable.eqv J)).inverse

/--
Checking exactness of limits of shape `Discrete ℕ` and `Discrete J` for finite `J` is enough for
countable AB4*.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcbbcb10d3cd12bffef42feaea4a268b544a9da5c99dee35333091d3b692b2be4.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7571fc9bf8e5b629698c7ef419cf64612c16520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
