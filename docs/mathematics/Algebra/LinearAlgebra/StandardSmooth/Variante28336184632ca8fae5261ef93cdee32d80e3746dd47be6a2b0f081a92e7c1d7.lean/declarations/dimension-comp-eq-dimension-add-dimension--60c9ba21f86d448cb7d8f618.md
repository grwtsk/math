# dimension_comp_eq_dimension_add_dimension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c240e0d-48f2-1741-c0f3-8406a2ed730e",
  "kind": "lemma",
  "lexical_name": "dimension_comp_eq_dimension_add_dimension",
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
  "slug": "dimension-comp-eq-dimension-add-dimension--60c9ba21f86d448cb7d8f618",
  "source": {
    "blob": "759c6dc115d6ba670e176614460f6fcd371b1c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 272,
    "path": "GRWTSK/Algebra/LinearAlgebra/StandardSmooth/Variante28336184632ca8fae5261ef93cdee32d80e3746dd47be6a2b0f081a92e7c1d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60c9ba21f86d448cb7d8f61872985b01488d236815515e6899f548b1dab3f5c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StandardSmooth/Variante28336184632ca8fae5261ef93cdee32d80e3746dd47be6a2b0f081a92e7c1d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c240e0d-48f2-1741-c0f3-8406a2ed730e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dimension_comp_eq_dimension_add_dimension [Q.IsFinite] [P.IsFinite] :
    (Q.comp P).dimension = Q.dimension + P.dimension := by
  simp only [Presentation.dimension, toPresentation_comp, Presentation.comp_rels,
    Presentation.toGenerators_comp, Generators.comp_vars]
  have : Nat.card P.rels ≤ Nat.card P.vars :=
    card_relations_le_card_vars_of_isFinite P
  have : Nat.card Q.rels ≤ Nat.card Q.vars :=
    card_relations_le_card_vars_of_isFinite Q
  simp only [Nat.card_sum]
  omega

section

/-!
### Jacobian of composition

Let `S` be an `R`-algebra and `T` be an `S`-algebra with presentations `P` and `Q` respectively.
In this section we compute the jacobian of the composition of `Q` and `P` to be
the product of the jacobians. For this we use a block decomposition of the jacobi matrix and show
that the upper-right block vanishes, the upper-left block has determinant jacobian of `Q` and
the lower-right block has determinant jacobian of `P`.

-/

variable [DecidableEq (Q.comp P).rels] [Fintype (Q.comp P).rels]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StandardSmooth/Variante28336184632ca8fae5261ef93cdee32d80e3746dd47be6a2b0f081a92e7c1d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StandardSmooth/Variante28336184632ca8fae5261ef93cdee32d80e3746dd47be6a2b0f081a92e7c1d7.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759c6dc115d6ba670e176614460f6fcd371b1c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
