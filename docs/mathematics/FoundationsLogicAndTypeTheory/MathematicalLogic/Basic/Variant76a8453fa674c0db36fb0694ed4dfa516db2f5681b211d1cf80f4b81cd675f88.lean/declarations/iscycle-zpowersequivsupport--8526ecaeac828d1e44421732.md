# IsCycle.zpowersEquivSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:557026d34f7b692a0da597fdacde78e9abcc2eec5e556578f8ecbfe8609fdf74",
  "kind": "def",
  "lexical_name": "IsCycle.zpowersEquivSupport",
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
  "slug": "iscycle-zpowersequivsupport--8526ecaeac828d1e44421732",
  "source": {
    "blob": "33a0a177dacc514f42e4d5742e070ec7c0806fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8526ecaeac828d1e44421732889db7bd4eb30a1c78f7583f742d2c732ae798b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:557026d34f7b692a0da597fdacde78e9abcc2eec5e556578f8ecbfe8609fdf74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsCycle.zpowersEquivSupport {σ : Perm α} (hσ : IsCycle σ) :
    (Subgroup.zpowers σ) ≃ σ.support :=
  Equiv.ofBijective
    (fun (τ : ↥((Subgroup.zpowers σ) : Set (Perm α))) =>
      ⟨(τ : Perm α) (Classical.choose hσ), by
        obtain ⟨τ, n, rfl⟩ := τ
        rw [Subtype.coe_mk, zpow_apply_mem_support, mem_support]
        exact (Classical.choose_spec hσ).1⟩)
    (by
      constructor
      · rintro ⟨a, m, rfl⟩ ⟨b, n, rfl⟩ h
        ext y
        by_cases hy : σ y = y
        · simp_rw [zpow_apply_eq_self_of_apply_eq_self hy]
        · obtain ⟨i, rfl⟩ := (Classical.choose_spec hσ).2 hy
          rw [Subtype.coe_mk, Subtype.coe_mk, zpow_apply_comm σ m i, zpow_apply_comm σ n i]
          exact congr_arg _ (Subtype.ext_iff.mp h)
      · rintro ⟨y, hy⟩
        rw [mem_support] at hy
        obtain ⟨n, rfl⟩ := (Classical.choose_spec hσ).2 hy
        exact ⟨⟨σ ^ n, n, rfl⟩, rfl⟩)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a0a177dacc514f42e4d5742e070ec7c0806fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
