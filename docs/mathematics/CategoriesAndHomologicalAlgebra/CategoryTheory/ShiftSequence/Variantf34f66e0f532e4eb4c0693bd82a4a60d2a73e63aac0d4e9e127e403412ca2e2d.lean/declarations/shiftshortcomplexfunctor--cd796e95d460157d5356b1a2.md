# shiftShortComplexFunctor'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81ce48cdcc9bb8e4d6908b3c1691e805a59fdcf8424a7dee788f8e3b490ddef3",
  "kind": "def",
  "lexical_name": "shiftShortComplexFunctor'",
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
  "slug": "shiftshortcomplexfunctor--cd796e95d460157d5356b1a2",
  "source": {
    "blob": "e09c4098267b48eacfa842fdb2dd9c3666ac15fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd796e95d460157d5356b1a25aa4ea9825e1497925b52dfae51f98b25bb3d3fa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81ce48cdcc9bb8e4d6908b3c1691e805a59fdcf8424a7dee788f8e3b490ddef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftShortComplexFunctor' (n i j k i' j' k' : ℤ)
    (hi : n + i = i') (hj : n + j = j') (hk : n + k = k') :
    (CategoryTheory.shiftFunctor (CochainComplex C ℤ) n) ⋙ shortComplexFunctor' C _ i j k ≅
      shortComplexFunctor' C _ i' j' k' :=
  NatIso.ofComponents (fun K => ShortComplex.isoMk
      (n.negOnePow • ((shiftEval C n i i' hi).app K))
      ((shiftEval C n j j' hj).app K) (n.negOnePow • ((shiftEval C n k k' hk).app K))
      (by simp) (by simp))
      (fun f ↦ by ext <;> simp)

/-- The natural isomorphism `(K⟦n⟧).sc i ≅ K.sc i'` when `n + i = i'`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantf34f66e0f532e4eb4c0693bd82a4a60d2a73e63aac0d4e9e127e403412ca2e2d.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09c4098267b48eacfa842fdb2dd9c3666ac15fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
