# w_ind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f452cd10-09c4-c250-cd1b-12110105463f",
  "kind": "theorem",
  "lexical_name": "w_ind",
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
  "slug": "w-ind--df455b229db0bc3b30c3b63e",
  "source": {
    "blob": "308fc32a0e753757bf6e5a8b5a373051843a54f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 225,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant65b113bb112044a0cbf21d65137e523f11b82fef4625dca1a5431f2fb5da14d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df455b229db0bc3b30c3b63e61222ac85432ec9ec74d7ad78c24e1e625e960db",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant65b113bb112044a0cbf21d65137e523f11b82fef4625dca1a5431f2fb5da14d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f452cd10-09c4-c250-cd1b-12110105463f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem w_ind {α : TypeVec n} {C : P.W α → Prop}
    (ih : ∀ (a : P.A) (f' : P.drop.B a ⟹ α) (f : P.last.B a → P.W α),
        (∀ i, C (f i)) → C (P.wMk a f' f)) :
    ∀ x, C x := by
  intro x; cases' x with a f
  apply @wp_ind n P α fun a f => C ⟨a, f⟩
  intro a f f' ih'
  dsimp [wMk] at ih
  let ih'' := ih a (P.wPathDestLeft f') fun i => ⟨f i, P.wPathDestRight f' i⟩
  dsimp at ih''; rw [wPathCasesOn_eta] at ih''
  apply ih''
  apply ih'
set_option linter.uppercaseLean3 false in
#align mvpfunctor.W_ind MvPFunctor.w_ind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant65b113bb112044a0cbf21d65137e523f11b82fef4625dca1a5431f2fb5da14d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant65b113bb112044a0cbf21d65137e523f11b82fef4625dca1a5431f2fb5da14d7.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308fc32a0e753757bf6e5a8b5a373051843a54f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
