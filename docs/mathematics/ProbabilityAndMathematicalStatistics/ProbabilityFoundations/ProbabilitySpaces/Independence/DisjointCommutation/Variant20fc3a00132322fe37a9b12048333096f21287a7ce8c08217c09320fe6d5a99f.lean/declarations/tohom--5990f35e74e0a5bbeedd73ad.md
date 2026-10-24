# toHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b1e049e5b856dd3874ab480cd05c955aaffccf39b2b6e0a56abda7586f986a5",
  "kind": "def",
  "lexical_name": "toHom",
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
  "slug": "tohom--5990f35e74e0a5bbeedd73ad",
  "source": {
    "blob": "0d45d62ae6b2df5d11d53027dcbb1857423189dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 311,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5990f35e74e0a5bbeedd73ad4d3912518476207995f211a9e51bce876ea50e6d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b1e049e5b856dd3874ab480cd05c955aaffccf39b2b6e0a56abda7586f986a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toHom
    {T : SmoothFramedSurgeryTheory}
    (G : RelativeBoundaryDiffeomorphismTheory T)
    {count : Nat}
    {result : Equiv.Perm (Fin count) → T.Manifold}
    (adjacent : ∀ left right, AdjacentOrder left right →
      G.Hom (result left) (result right))
    {left right : Equiv.Perm (Fin count)}
    (path : AdjacentSwapPath left right) :
    G.Hom (result left) (result right) := by
  induction path with
  | nil order => exact G.refl (result order)
  | @cons left middle right head tail ih =>
      exact G.trans (adjacent left middle head) ih

end AdjacentSwapPath

/--
A coherent execution of every ordering of a finite disjoint family.

The explicit two-site transport must satisfy the same `TransportedCopy`
semantics used by every typed execution.  Adjacent swaps receive primary
comparison maps, all comparisons agree with those generators, and the cocycle
law supplies the required higher path coherence.  A concrete
collar-and-transport construction must supply the complete record.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d45d62ae6b2df5d11d53027dcbb1857423189dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
