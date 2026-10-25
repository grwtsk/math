# closure_eq_latticeClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c7ded53-e691-0501-7d64-2c7c4461b211",
  "kind": "lemma",
  "lexical_name": "closure_eq_latticeClosure",
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
  "slug": "closure-eq-latticeclosure--60ed1143398c2cd17f56a539",
  "source": {
    "blob": "45fc4d57d3432abb17cb6a4137ed0d996e7bbc6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 390,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60ed1143398c2cd17f56a539c97fd93c4b8218a329ca14da5565b191d779d248",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c7ded53-e691-0501-7d64-2c7c4461b211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma closure_eq_latticeClosure (hs1 : ⊥ ∈ s) (hs2 : compl '' s = s) :
    closure s = latticeClosure s := by
  refine subset_antisymm ?_ latticeClosure_subset_closure
  intro t ht
  induction ht using closure_bot_sup_induction with
  | mem _ hx => apply subset_latticeClosure hx
  | bot => apply subset_latticeClosure hs1
  | sup _ _ _ _ hx hy => apply isSublattice_latticeClosure.supClosed hx hy
  | compl _ _ h =>
    rw [← compl_image_latticeClosure_eq_of_compl_image_eq_self hs2]
    exact mem_image_of_mem compl h

section sdiff_sup

variable (isSublattice : IsSublattice s) (bot_mem : ⊥ ∈ s) (top_mem : ⊤ ∈ s)
include isSublattice bot_mem top_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant384ac00c27dbe687ce308415f2e10d70bc176de9c29ee7233d5dbc7be419e6be.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45fc4d57d3432abb17cb6a4137ed0d996e7bbc6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
