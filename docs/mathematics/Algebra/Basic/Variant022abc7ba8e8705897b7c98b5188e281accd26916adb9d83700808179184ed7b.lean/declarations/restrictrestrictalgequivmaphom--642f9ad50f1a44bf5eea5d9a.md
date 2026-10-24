# restrictRestrictAlgEquivMapHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7b56f23e96ab8871d23ae19a998a5d8bedd9ad18f4794d4f8b604922f0f1f93",
  "kind": "def",
  "lexical_name": "restrictRestrictAlgEquivMapHom",
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
  "slug": "restrictrestrictalgequivmaphom--642f9ad50f1a44bf5eea5d9a",
  "source": {
    "blob": "5fd27e6b1cae861e577e1e1c368cc88bb1acc65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 616,
    "path": "GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:642f9ad50f1a44bf5eea5d9a4a9791e0ebfbcbb2013840013e3d56e69dc6493b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7b56f23e96ab8871d23ae19a998a5d8bedd9ad18f4794d4f8b604922f0f1f93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restrictRestrictAlgEquivMapHom (F K L E : Type*) [Field F] [Field K] [Field L]
    [Field E] [Algebra F K] [Algebra F L] [Algebra F E] [Algebra K E] [Algebra L E]
    [IsScalarTower F K E] [IsScalarTower F L E] [Normal F K] :
    Gal(E/L) →* Gal(K/F) :=
  (AlgEquiv.restrictNormalHom K).comp (MulSemiringAction.toAlgAut Gal(E/L) F E)

variable {F E : Type*} (E' : Type*) [Field F] [Field E] [Field E']
  [Algebra F E] [Algebra F E'] [Algebra E E'] [IsScalarTower F E E']
  (K L : IntermediateField F E) [Normal F K]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd27e6b1cae861e577e1e1c368cc88bb1acc65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
