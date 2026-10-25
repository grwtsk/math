# checkCompositionsTac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9be31b356eab89a9d27ddc03040dc4655d68ef5a3b80c948c04feaafe2623b8e",
  "kind": "def",
  "lexical_name": "checkCompositionsTac",
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
  "slug": "checkcompositionstac--bf1b7daa06ba8e2c80f1038d",
  "source": {
    "blob": "bbcd4cddd36002ad45f83cf34747826eb24aca60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf1b7daa06ba8e2c80f1038dbab83a0f1dd6a5c041ff69574c80c31bcc7c56c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9be31b356eab89a9d27ddc03040dc4655d68ef5a3b80c948c04feaafe2623b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def checkCompositionsTac : TacticM Unit := withMainContext do
  let e ← getMainTarget
  checkCompositions e

/-- For each composition `f ≫ g` in the goal,
which internally is represented as `CategoryStruct.comp C inst X Y Z f g`,
infer the types of `f` and `g` and check whether their sources and targets agree
with `X`, `Y`, and `Z` at "instances and reducible" transparency,
reporting any discrepancies.

An example:

```
example (j : J) :
    colimit.ι ((F ⋙ G) ⋙ H) j ≫ (preservesColimitIso (G ⋙ H) F).inv =
      H.map (G.map (colimit.ι F j)) := by

  -- We know which lemma we want to use, and it's even a simp lemma, but `rw`
  -- won't let us apply it
  fail_if_success rw [ι_preservesColimitIso_inv]
  fail_if_success rw [ι_preservesColimitIso_inv (G ⋙ H)]
  fail_if_success simp only [ι_preservesColimitIso_inv]

  -- This would work:
  -- erw [ι_preservesColimitIso_inv (G ⋙ H)]

  -- `check_compositions` checks if the two morphisms we're composing are
  -- composed by abusing defeq, and indeed it tells us that we are abusing
  -- definitional associativity of composition of functors here: it prints
  -- the following.

  -- info: In composition
  --   colimit.ι ((F ⋙ G) ⋙ H) j ≫ (preservesColimitIso (G ⋙ H) F).inv
  -- the source of
  --   (preservesColimitIso (G ⋙ H) F).inv
  -- is
  --   colimit (F ⋙ G ⋙ H)
  -- but should be
  --   colimit ((F ⋙ G) ⋙ H)

  check_compositions

  -- In this case, we can "fix" this by reassociating in the goal, but
  -- usually at this point the right thing to do is to back off and
  -- check how we ended up with a bad goal in the first place.
  dsimp only [Functor.assoc]

  -- This would work now, but it is not needed, because simp works as well
  -- rw [ι_preservesColimitIso_inv]

  simp
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompositions/Variantf271574b5c9a9b887540d9d7919fa075d3eea3ff24f5c4ead8101ebeb33037f0.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbcd4cddd36002ad45f83cf34747826eb24aca60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
