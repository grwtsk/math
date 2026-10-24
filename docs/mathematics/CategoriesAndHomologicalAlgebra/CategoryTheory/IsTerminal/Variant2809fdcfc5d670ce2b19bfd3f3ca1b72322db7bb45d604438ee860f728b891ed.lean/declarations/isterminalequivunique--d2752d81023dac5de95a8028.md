# isTerminalEquivUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fff25999bd82067e6e9a8b390b450e1566199f19da7d88eeee0b8afa61b4fc01",
  "kind": "def",
  "lexical_name": "isTerminalEquivUnique",
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
  "slug": "isterminalequivunique--d2752d81023dac5de95a8028",
  "source": {
    "blob": "19985040d5554b11fdd2e53f607f26c8b0969037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variant2809fdcfc5d670ce2b19bfd3f3ca1b72322db7bb45d604438ee860f728b891ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2752d81023dac5de95a80286414241364178a96ee7e79bbd856eb3aa76d30f0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variant2809fdcfc5d670ce2b19bfd3f3ca1b72322db7bb45d604438ee860f728b891ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fff25999bd82067e6e9a8b390b450e1566199f19da7d88eeee0b8afa61b4fc01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isTerminalEquivUnique (F : Discrete.{0} PEmpty.{1} ⥤ C) (Y : C) :
    IsLimit (⟨Y, by aesop_cat, by simp⟩ : Cone F) ≃ ∀ X : C, Unique (X ⟶ Y) where
  toFun t X :=
    { default := t.lift ⟨X, ⟨by aesop_cat, by simp⟩⟩
      uniq := fun f =>
        t.uniq ⟨X, ⟨by aesop_cat, by simp⟩⟩ f (by simp) }
  invFun u :=
    { lift := fun s => (u s.pt).default
      uniq := fun s _ _ => (u s.pt).2 _ }
  left_inv := by dsimp [Function.LeftInverse]; intro x; simp only [eq_iff_true_of_subsingleton]
  right_inv := by
    dsimp [Function.RightInverse,Function.LeftInverse]
    intro u; funext X; simp only

/-- An object `Y` is terminal if for every `X` there is a unique morphism `X ⟶ Y`
    (as an instance). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variant2809fdcfc5d670ce2b19bfd3f3ca1b72322db7bb45d604438ee860f728b891ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsTerminal/Variant2809fdcfc5d670ce2b19bfd3f3ca1b72322db7bb45d604438ee860f728b891ed.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19985040d5554b11fdd2e53f607f26c8b0969037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
