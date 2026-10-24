# wpRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2601e8a725d7096be8abaf29de5e1a1e85cbabc1609c7232b6c023dfc13a1bf3",
  "kind": "def",
  "lexical_name": "wpRec",
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
  "slug": "wprec--822f451cecbfcc9ff95d2eab",
  "source": {
    "blob": "443b329e048b4ce0ea0551c22608d6935bd23b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:822f451cecbfcc9ff95d2eab63f2ffe337897fcd4cc074376151fb0d00b9d894",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2601e8a725d7096be8abaf29de5e1a1e85cbabc1609c7232b6c023dfc13a1bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wpRec {α : TypeVec n} {C : Type*}
    (g : ∀ (a : P.A) (f : P.last.B a → P.last.W), P.WPath ⟨a, f⟩ ⟹ α → (P.last.B a → C) → C) :
    ∀ (x : P.last.W) (_ : P.WPath x ⟹ α), C
  | ⟨a, f⟩, f' => g a f f' fun i => wpRec g (f i) (P.wPathDestRight f' i)
set_option linter.uppercaseLean3 false in
#align mvpfunctor.Wp_rec MvPFunctor.wpRec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/W/Variant155c67c152fdf30ba5c7a34da5c7e0641736ff9a971cdadfaf10b451fd6e8b02.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `443b329e048b4ce0ea0551c22608d6935bd23b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
