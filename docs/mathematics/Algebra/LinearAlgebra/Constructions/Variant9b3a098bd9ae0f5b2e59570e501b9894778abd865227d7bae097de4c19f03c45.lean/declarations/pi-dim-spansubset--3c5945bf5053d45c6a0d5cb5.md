# Pi.dim_spanSubset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:579e2219-1139-fffb-5a6b-3ba58e3cc9b9",
  "kind": "lemma",
  "lexical_name": "Pi.dim_spanSubset",
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
  "slug": "pi-dim-spansubset--3c5945bf5053d45c6a0d5cb5",
  "source": {
    "blob": "a295c30feca565b8dc05cb538d57e5a01aa73cbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 504,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c5945bf5053d45c6a0d5cb5eb760369a923f650e7089112d05233e18bd3da61",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:579e2219-1139-fffb-5a6b-3ba58e3cc9b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pi.dim_spanSubset [Finite ι] [Nontrivial R] {s : Set ι} :
    Module.finrank R (Pi.spanSubset R s) = s.ncard := by
  classical
  have := Fintype.ofFinite ι
  rw [Pi.spanSubset, finrank_span_set_eq_card <| (Pi.basisFun R ι).linearIndepOn _ |>.id_image,
    Set.toFinset_card, Fintype.card_eq_nat_card, Nat.card_coe_set_eq]
  exact Set.ncard_image_of_injective s <| (Pi.basisFun R ι).injective

end Span

section SubalgebraRank

open Module

section Semiring

variable {F E : Type*} [CommSemiring F] [Semiring E] [Algebra F E]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variant9b3a098bd9ae0f5b2e59570e501b9894778abd865227d7bae097de4c19f03c45.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a295c30feca565b8dc05cb538d57e5a01aa73cbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
