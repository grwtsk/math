# IsLocalization.mk'_algebraMap_eq_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e478ad31-cf16-0dc3-e641-c50002cdcf8e",
  "kind": "lemma",
  "lexical_name": "IsLocalization.mk'_algebraMap_eq_mk'",
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
  "slug": "islocalization-mk-algebramap-eq-mk--c06ae0f2c796ed1634fa665f",
  "source": {
    "blob": "097f5eae96fb7d53af6759423c8a61ada7399913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c06ae0f2c796ed1634fa665f26eaffb1c3b0673ea3a0f1a400d9838178b8d984",
  "verification": {
    "reference": "docs/verification/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e478ad31-cf16-0dc3-e641-c50002cdcf8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalization.mk'_algebraMap_eq_mk' [IsLocalization (Algebra.algebraMapSubmonoid A S) Aₛ]
    {x : A} {s : S} : IsLocalization.mk' Aₛ x ⟨_, Algebra.mem_algebraMapSubmonoid_of_mem s⟩ =
      IsLocalizedModule.mk' (IsScalarTower.toAlgHom R A Aₛ).toLinearMap x s := by
  rw [← IsLocalizedModule.smul_inj (IsScalarTower.toAlgHom R A Aₛ).toLinearMap s,
    IsLocalizedModule.mk'_cancel', Submonoid.smul_def, ← algebraMap_smul A]
  exact IsLocalization.smul_mk'_self (m := ⟨_, _⟩)

/-- `IsLocalization.mk'` agrees with `IsLocalizedModule.mk'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsLocalization/Variantd99eaa4357310123bb51a9a499067ce726b323a333e318835dd4398292e4f58e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `097f5eae96fb7d53af6759423c8a61ada7399913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
