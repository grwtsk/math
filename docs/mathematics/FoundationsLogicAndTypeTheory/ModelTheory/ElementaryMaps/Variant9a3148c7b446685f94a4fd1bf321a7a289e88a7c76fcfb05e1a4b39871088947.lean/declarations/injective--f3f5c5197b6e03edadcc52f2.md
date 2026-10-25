# injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a511bd8-8f35-b7ec-de11-e7815215a55e",
  "kind": "theorem",
  "lexical_name": "injective",
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
  "slug": "injective--f3f5c5197b6e03edadcc52f2",
  "source": {
    "blob": "e06ab8d9c5fe1226c57b03a9e00cc5128e80aecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant9a3148c7b446685f94a4fd1bf321a7a289e88a7c76fcfb05e1a4b39871088947.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3f5c5197b6e03edadcc52f2b448bab0a7876944c16e35232e2ca3fbc80ac143",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant9a3148c7b446685f94a4fd1bf321a7a289e88a7c76fcfb05e1a4b39871088947.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a511bd8-8f35-b7ec-de11-e7815215a55e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective (φ : M ↪ₑ[L] N) : Function.Injective φ := by
  intro x y
  have h :=
    φ.map_formula ((var 0).equal (var 1) : L.Formula (Fin 2)) fun i => if i = 0 then x else y
  rw [Formula.realize_equal, Formula.realize_equal] at h
  simp only [Nat.one_ne_zero, Term.realize, Fin.one_eq_zero_iff, if_true, eq_self_iff_true,
    Function.comp_apply, if_false] at h
  exact h.1
#align first_order.language.elementary_embedding.injective FirstOrder.Language.ElementaryEmbedding.injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant9a3148c7b446685f94a4fd1bf321a7a289e88a7c76fcfb05e1a4b39871088947.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant9a3148c7b446685f94a4fd1bf321a7a289e88a7c76fcfb05e1a4b39871088947.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e06ab8d9c5fe1226c57b03a9e00cc5128e80aecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
