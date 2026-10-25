# rewriteGoalUsingEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05b40d8a760c2e08b241e035f4e0e9227a64a95a82f83a0d3d1653947081f821",
  "kind": "def",
  "lexical_name": "rewriteGoalUsingEq",
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
  "slug": "rewritegoalusingeq--2a329eda21d71f0cd77090eb",
  "source": {
    "blob": "ea9fa4f4041b570e5990dfd26fa95cb772c0de14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a329eda21d71f0cd77090eb9d4bb4e7daaaa510793ad7f81805014f7c8bce2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05b40d8a760c2e08b241e035f4e0e9227a64a95a82f83a0d3d1653947081f821`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def rewriteGoalUsingEq (goal : MVarId) (eq : Expr) (symm : Bool := false) : MetaM MVarId := do
  let rewriteResult ← goal.rewrite (←goal.getType) eq symm
  goal.replaceTargetEq rewriteResult.eNew rewriteResult.eqProof

/--
  Generates unfolding lemmas that relate coinductive predicates to their flat inductive forms.
  These lemmas are essential for the constructor generation process, providing the bridge
  between the user-facing coinductive predicates and their internal flat representations.

  Example:

  Given a definition:
  ```
  coinductive infSeq (r : α → α → Prop) : α → Prop where
  | step : r a b → infSeq r b → infSeq r a
  ```

  We generate the following unfolding lemma:
  ```
    infSeq.functor_unfold (α : Type) (r : α → α → Prop) (a✝ : α) : infSeq α r a✝ = infSeq._functor α r (infSeq α r) a✝
  ```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant0bbd3ff4714f305cab475d75c71ffd114b1253e53ed0d2c9a1a98a308942b6af.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea9fa4f4041b570e5990dfd26fa95cb772c0de14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
