# trunc_X_pow_self_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:252c531d-7ac1-a4e5-c5ae-059a3a8ddf8b",
  "kind": "lemma",
  "lexical_name": "trunc_X_pow_self_mul",
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
  "slug": "trunc-x-pow-self-mul--b86e4bdc0c67b085dcaf5c09",
  "source": {
    "blob": "72761c0b31b2ea501ddda29cc2422f4da5b09622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 159,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b86e4bdc0c67b085dcaf5c098f35d2bd2ea2f511a26b26235f9cfa0725555563",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:252c531d-7ac1-a4e5-c5ae-059a3a8ddf8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trunc_X_pow_self_mul (n : ℕ) (p : R⟦X⟧) : (X ^ n * p).trunc n = 0 := by
  ext; simp +contextual [coeff_trunc, coeff_X_pow_mul']

end Trunc

section Trunc
/-
Lemmas in this section involve the coercion `R[X] → R⟦X⟧`, so they may only be stated in the case
`R` is commutative. This is because the coercion is an `R`-algebra map.
-/
variable {R : Type*} [CommSemiring R]

open Nat hiding pow_succ pow_zero
open Finset Finset.Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant47f445587bb001bbd3c13bc57b289b9e5284bd13a01467eb9bc5d3103d954a65.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72761c0b31b2ea501ddda29cc2422f4da5b09622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
