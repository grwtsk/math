# basis_finite_of_finite_spans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b47e936ca3e144bf7c8bd4cfefdd043c121d895",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4b95c7e-fdac-3fc5-b286-ddc22be21e6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88e008c2-54f1-4816-730c-bacffa599307",
  "kind": "lemma",
  "lexical_name": "basis_finite_of_finite_spans",
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
  "slug": "basis-finite-of-finite-spans--4722d3afe5e65f96fe0359e7",
  "source": {
    "blob": "1b47e936ca3e144bf7c8bd4cfefdd043c121d895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variantc7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4722d3afe5e65f96fe0359e76c262c416120326e224c543fff178f5ae8b73e73",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cardinality/Variantc7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88e008c2-54f1-4816-730c-bacffa599307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma basis_finite_of_finite_spans [Nontrivial R] {s : Set M} (hs : s.Finite)
    (hsspan : span R s = ⊤) {ι : Type w} (b : Basis ι R M) : Finite ι := by
  have := congr(($hsspan).map b.repr.toLinearMap)
  rw [← span_image, Submodule.map_top, LinearEquiv.range] at this
  exact finite_of_span_finite_eq_top_finsupp (hs.image _) this

end Semiring

section Ring

variable [Semiring R] [AddCommMonoid M] [Nontrivial R] [Module R M]

-- From [Les familles libres maximales d'un module ont-elles le meme cardinal?][lazarus1973]
/-- Over any ring `R`, if `b` is a basis for a module `M`,
and `s` is a maximal linearly independent set,
then the union of the supports of `x ∈ s` (when written out in the basis `b`) is all of `b`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cardinality/Variantc7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cardinality/Variantc7ce932a1f22aaf7664747e2a9f71e14a67bb54f7a0885d3bcb86333d547523d.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b47e936ca3e144bf7c8bd4cfefdd043c121d895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
