# typevecCasesCons₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea6d4b4e86cc15cfb70e40f52e1474b3dffa62c28371c462275ebce0d056314f",
  "kind": "def",
  "lexical_name": "typevecCasesCons₂",
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
  "slug": "typeveccasescons--b82f7b30dd6e9572f19d283f",
  "source": {
    "blob": "febd7889f8a38c59ac0351f9013ac89dbc9c00a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 372,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant33a5b09b2ab809a60021bbd366f99109e952aed38d8ddc4360d1e77b7e30adea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b82f7b30dd6e9572f19d283f88264241df02da85689b87fa9167f091dfc1a9ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant33a5b09b2ab809a60021bbd366f99109e952aed38d8ddc4360d1e77b7e30adea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea6d4b4e86cc15cfb70e40f52e1474b3dffa62c28371c462275ebce0d056314f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typevecCasesCons₂ (n : ℕ) (t t' : Type*) (v v' : TypeVec n)
                      {β : (v ::: t) ⟹ (v' ::: t') → Sort*}
    (F : ∀ (f : t → t') (fs : v ⟹ v'), β (fs ::: f)) : ∀ fs, β fs := by
  intro fs
  rw [← split_dropFun_lastFun fs]
  apply F
#align typevec.typevec_cases_cons₂ TypeVec.typevecCasesCons₂


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant33a5b09b2ab809a60021bbd366f99109e952aed38d8ddc4360d1e77b7e30adea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant33a5b09b2ab809a60021bbd366f99109e952aed38d8ddc4360d1e77b7e30adea.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `febd7889f8a38c59ac0351f9013ac89dbc9c00a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
