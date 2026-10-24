# tmul_one_tmul_one_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9fe918d7be97282ae874ea81b1c038bd1f2108b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d797218-209e-8546-fc5d-81e777d4d5cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94694a6d-2d15-9b94-6281-e2e843987c5a",
  "kind": "lemma",
  "lexical_name": "tmul_one_tmul_one_tmul",
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
  "slug": "tmul-one-tmul-one-tmul--14da4d1fbb6c2e369d4c1cdd",
  "source": {
    "blob": "f9fe918d7be97282ae874ea81b1c038bd1f2108b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 306,
    "path": "GRWTSK/Algebra/LinearAlgebra/Maps/Variant05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14da4d1fbb6c2e369d4c1cdd49d469f85620773bd3e774574dba9146d3b21721",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Maps/Variant05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94694a6d-2d15-9b94-6281-e2e843987c5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tmul_one_tmul_one_tmul (x : A) (y : C) :
    x ⊗ₜ[R] (1 : B) ⊗ₜ[A] ((1 : A) ⊗ₜ[R] y) = 1 ⊗ₜ[A] (x ⊗ₜ[R] y) := by
  trans x • 1 ⊗ₜ[A] (1 ⊗ₜ[R] y)
  · simp [Algebra.smul_def]
  · simp [← tmul_smul, smul_tmul' (M := A)]

end

section CompatibleSMul

variable (R S T A B : Type*) [CommSemiring R] [CommSemiring S] [CommSemiring T] [Semiring A]
  [Semiring B]
variable [Algebra R A] [Algebra R B] [Algebra S A] [Algebra S B]
variable [Algebra T A] [SMulCommClass R T A] [SMulCommClass S T A]
variable [SMulCommClass R S A] [CompatibleSMul R S A B]

/-- If A and B are both R- and S-algebras and their actions on them commute,
and if the S-action on `A ⊗[R] B` can switch between the two factors, then there is a
canonical T-algebra homomorphism from `A ⊗[S] B` to `A ⊗[R] B`,
where `T` is any other ring acting on `A` and whose action commutes with the `R` and `S`-actions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Maps/Variant05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Maps/Variant05707a5dfad01c14333a78eacba15ee2ef156d7331d4f372aec09d82303fa9a0.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9fe918d7be97282ae874ea81b1c038bd1f2108b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
