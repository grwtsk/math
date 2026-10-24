# Module.Free.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2654ccad1d02b98335c30ca24fdf6aa3d303cdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec3ba2dd-b7c1-2af3-051c-f4972da6297b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4753fec-5015-4703-c921-5894c71926a5",
  "kind": "lemma",
  "lexical_name": "Module.Free.trans",
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
  "slug": "module-free-trans--ee1649afd5107743dddfb4df",
  "source": {
    "blob": "f2654ccad1d02b98335c30ca24fdf6aa3d303cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 174,
    "path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee1649afd5107743dddfb4dfadae5e9c62777b225bf92805ebe1228a840068ec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4753fec-5015-4703-c921-5894c71926a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.Free.trans {R S M : Type*} [CommSemiring R] [Semiring S] [Algebra R S]
    [AddCommMonoid M] [Module R M] [Module S M] [IsScalarTower R S M] [Module.Free S M]
    [Module.Free R S] : Module.Free R M :=
  let e : (ChooseBasisIndex S M →₀ S) ≃ₗ[R] ChooseBasisIndex S M →₀ (ChooseBasisIndex R S →₀ R) :=
    Finsupp.mapRange.linearEquiv (chooseBasis R S).repr
  let e : M ≃ₗ[R] ChooseBasisIndex S M →₀ (ChooseBasisIndex R S →₀ R) :=
    (chooseBasis S M).repr.restrictScalars R ≪≫ₗ e
  .of_equiv e.symm

/-! TODO: move this section to an earlier file. -/


namespace Basis

variable {R M n : Type*}
variable [DecidableEq n]
variable [Semiring R] [AddCommMonoid M] [Module R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantd214f482e40db2f86466ad251bddd69e025bf1948c83e1e45372aae20f20ed2f.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2654ccad1d02b98335c30ca24fdf6aa3d303cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
