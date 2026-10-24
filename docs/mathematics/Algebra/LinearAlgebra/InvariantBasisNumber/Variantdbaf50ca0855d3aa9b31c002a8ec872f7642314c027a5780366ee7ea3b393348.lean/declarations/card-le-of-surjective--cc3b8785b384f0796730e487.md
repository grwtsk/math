# card_le_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:131a3562-eb07-005c-a090-8a5930bbc89b",
  "kind": "theorem",
  "lexical_name": "card_le_of_surjective",
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
  "slug": "card-le-of-surjective--cc3b8785b384f0796730e487",
  "source": {
    "blob": "a04cef562c8872ceccf762ea9b9dcaf16652f50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 182,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdbaf50ca0855d3aa9b31c002a8ec872f7642314c027a5780366ee7ea3b393348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc3b8785b384f0796730e487fb7e6de58ff39cab3ff79f61b6ba19c101021443",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdbaf50ca0855d3aa9b31c002a8ec872f7642314c027a5780366ee7ea3b393348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:131a3562-eb07-005c-a090-8a5930bbc89b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_of_surjective [RankCondition R] {α β : Type*} [Fintype α] [Fintype β]
    (f : (α → R) →ₗ[R] β → R) (i : Surjective f) : Fintype.card β ≤ Fintype.card α := by
  let P := LinearEquiv.funCongrLeft R R (Fintype.equivFin α)
  let Q := LinearEquiv.funCongrLeft R R (Fintype.equivFin β)
  exact le_of_fin_surjective R
    (Q.symm.toLinearMap ∘ₗ f ∘ₗ P) (Q.symm.surjective.comp (i.comp P.surjective))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdbaf50ca0855d3aa9b31c002a8ec872f7642314c027a5780366ee7ea3b393348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdbaf50ca0855d3aa9b31c002a8ec872f7642314c027a5780366ee7ea3b393348.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a04cef562c8872ceccf762ea9b9dcaf16652f50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
