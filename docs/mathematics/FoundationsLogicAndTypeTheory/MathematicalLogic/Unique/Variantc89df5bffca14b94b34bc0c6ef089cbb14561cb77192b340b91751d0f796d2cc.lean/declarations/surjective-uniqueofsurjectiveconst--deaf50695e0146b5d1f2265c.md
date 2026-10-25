# Surjective.uniqueOfSurjectiveConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a40c2b3d79d495157229ba5b3ef068ede45c7dc5c8ae114d4a6c2570cd5558b2",
  "kind": "def",
  "lexical_name": "Surjective.uniqueOfSurjectiveConst",
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
  "slug": "surjective-uniqueofsurjectiveconst--deaf50695e0146b5d1f2265c",
  "source": {
    "blob": "ec5684045e1f272b40c4db3cae8e16ce375a2fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 254,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:deaf50695e0146b5d1f2265cf10edaa1de3671ac56efbc9fa735245740d2dd3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a40c2b3d79d495157229ba5b3ef068ede45c7dc5c8ae114d4a6c2570cd5558b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Surjective.uniqueOfSurjectiveConst (α : Type*) {β : Type*} (b : β)
    (h : Function.Surjective (Function.const α b)) : Unique β :=
  @uniqueOfSubsingleton _ (subsingleton_of_forall_eq b <| h.forall.mpr fun _ ↦ rfl) b
#align function.surjective.unique_of_surjective_const Function.Surjective.uniqueOfSurjectiveConst

end Function

-- TODO: Mario turned this off as a simp lemma in Std, wanting to profile it.
attribute [simp] eq_iff_true_of_subsingleton in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantc89df5bffca14b94b34bc0c6ef089cbb14561cb77192b340b91751d0f796d2cc.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec5684045e1f272b40c4db3cae8e16ce375a2fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
