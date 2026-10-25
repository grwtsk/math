# ElementaryEmbedding.ofModelsElementaryDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e139d20d83b1aca749132af17e47cfb9e6dad3282c24945cad04d30cb46b4d3",
  "kind": "def",
  "lexical_name": "ElementaryEmbedding.ofModelsElementaryDiagram",
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
  "slug": "elementaryembedding-ofmodelselementarydiagram--c5033922f9a387629caf483c",
  "source": {
    "blob": "d46a16925ead2db94b8fbd3f9993b8a299021662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant43a92e494409afc4ebef13a82d536b0b563fca9b7ec6b82cce5dbd37c663ad07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5033922f9a387629caf483c791b397ee1b67330a0d5e6ad5e7f3e72e12ef866",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant43a92e494409afc4ebef13a82d536b0b563fca9b7ec6b82cce5dbd37c663ad07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e139d20d83b1aca749132af17e47cfb9e6dad3282c24945cad04d30cb46b4d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ElementaryEmbedding.ofModelsElementaryDiagram (N : Type*) [L.Structure N] [L[[M]].Structure N]
    [(lhomWithConstants L M).IsExpansionOn N] [N ⊨ L.elementaryDiagram M] : M ↪ₑ[L] N :=
  ⟨((↑) : L[[M]].Constants → N) ∘ Sum.inr, fun n φ x => by
    refine
      _root_.trans ?_
        ((realize_iff_of_model_completeTheory M N
              (((L.lhomWithConstants M).onBoundedFormula φ).subst
                  (Constants.term ∘ Sum.inr ∘ x)).alls).trans
          ?_)
    · simp_rw [Sentence.Realize, BoundedFormula.realize_alls, BoundedFormula.realize_subst,
        LHom.realize_onBoundedFormula, Formula.Realize, Unique.forall_iff, Function.comp_def,
        Term.realize_constants]
    · simp_rw [Sentence.Realize, BoundedFormula.realize_alls, BoundedFormula.realize_subst,
        LHom.realize_onBoundedFormula, Formula.Realize, Unique.forall_iff]
      rfl⟩

variable {L M}

namespace Embedding

/-- The **Tarski-Vaught test** for elementarity of an embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant43a92e494409afc4ebef13a82d536b0b563fca9b7ec6b82cce5dbd37c663ad07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant43a92e494409afc4ebef13a82d536b0b563fca9b7ec6b82cce5dbd37c663ad07.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46a16925ead2db94b8fbd3f9993b8a299021662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
