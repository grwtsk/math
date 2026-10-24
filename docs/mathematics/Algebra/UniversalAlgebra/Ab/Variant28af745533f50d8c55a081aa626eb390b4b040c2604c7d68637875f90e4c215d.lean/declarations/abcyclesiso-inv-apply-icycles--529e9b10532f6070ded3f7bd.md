# abCyclesIso_inv_apply_iCycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b7382f445fd84c34e1423e5a0bd49e6083dc09e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2535aa96-46bf-8ed5-248f-b2c977e4fc4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fb557ff-95ea-3db5-2a6b-34b8f8723c0e",
  "kind": "lemma",
  "lexical_name": "abCyclesIso_inv_apply_iCycles",
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
  "slug": "abcyclesiso-inv-apply-icycles--529e9b10532f6070ded3f7bd",
  "source": {
    "blob": "6b7382f445fd84c34e1423e5a0bd49e6083dc09e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:529e9b10532f6070ded3f7bd90f3cee049ece639de38f30f00aabd85862cdb6f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fb557ff-95ea-3db5-2a6b-34b8f8723c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abCyclesIso_inv_apply_iCycles (x : AddMonoidHom.ker S.g.hom) :
    S.iCycles (S.abCyclesIso.inv x) = x := by
  dsimp only [abCyclesIso]
  rw [← ConcreteCategory.comp_apply, S.abLeftHomologyData.cyclesIso_inv_comp_iCycles]
  rfl

/-- Given a short complex `S` of abelian groups, this is the isomorphism between
the abstract `S.homology` of the homology API and the more explicit
quotient of `AddMonoidHom.ker S.g` by the image of
`S.abToCycles : S.X₁ →+ AddMonoidHom.ker S.g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7382f445fd84c34e1423e5a0bd49e6083dc09e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
