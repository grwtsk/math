# toBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c973ce131abbef246721fc1333cbd4d6cd786d34e06f8497db2c80b600d72615",
  "kind": "def",
  "lexical_name": "toBooleanAlgebra",
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
  "slug": "tobooleanalgebra--8379010564f476d1c5bcbec7",
  "source": {
    "blob": "af6ee64a48bda70f0e81b4d74ce5bc9db8cc778d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Varianteb18ea02bbdf5ce81e0dd893fd024779bee1e4edf178ad1a84047d3cd78697a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8379010564f476d1c5bcbec70b00c1cc7c6fe0fda778f464f68f76bdea749e94",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Varianteb18ea02bbdf5ce81e0dd893fd024779bee1e4edf178ad1a84047d3cd78697a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c973ce131abbef246721fc1333cbd4d6cd786d34e06f8497db2c80b600d72615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toBooleanAlgebra : BooleanAlgebra α :=
  { Lattice.mk' sup_comm sup_assoc inf_comm inf_assoc sup_inf_self inf_sup_self with
    le_sup_inf := le_sup_inf
    top := 1
    le_top := fun a => show a + 1 + a * 1 = 1 by rw [mul_one, add_comm a 1,
                                                     add_assoc, add_self, add_zero]
    bot := 0
    bot_le := fun a => show 0 + a + 0 * a = a by rw [zero_mul, zero_add, add_zero]
    compl := fun a => 1 + a
    inf_compl_le_bot := fun a =>
      show a * (1 + a) + 0 + a * (1 + a) * 0 = 0 by norm_num [mul_add, mul_self, add_self]
    top_le_sup_compl := fun a => by
      change
        1 + (a + (1 + a) + a * (1 + a)) + 1 * (a + (1 + a) + a * (1 + a)) =
          a + (1 + a) + a * (1 + a)
      norm_num [mul_add, mul_self, add_self]
      rw [← add_assoc, add_self] }

-- Porting note (https://github.com/leanprover-community/mathlib4/issues/11215): TODO: add priority 100. lower instance priority
scoped[BooleanAlgebraOfBooleanRing] attribute [instance] BooleanRing.toBooleanAlgebra

end BooleanRing

open BooleanRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Varianteb18ea02bbdf5ce81e0dd893fd024779bee1e4edf178ad1a84047d3cd78697a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Varianteb18ea02bbdf5ce81e0dd893fd024779bee1e4edf178ad1a84047d3cd78697a3.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af6ee64a48bda70f0e81b4d74ce5bc9db8cc778d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
