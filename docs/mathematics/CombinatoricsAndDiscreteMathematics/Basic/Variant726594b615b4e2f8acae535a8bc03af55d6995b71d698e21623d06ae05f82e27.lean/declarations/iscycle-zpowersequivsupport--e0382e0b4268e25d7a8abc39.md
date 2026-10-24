# IsCycle.zpowersEquivSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1715fee005b3a15dd974f475375126e61276d7612f91073df10bf8e1cb5f5882",
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
  "slug": "iscycle-zpowersequivsupport--e0382e0b4268e25d7a8abc39",
  "source": {
    "blob": "2605e1918b96eecdca633b14ca542208f1b1c345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 398,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0382e0b4268e25d7a8abc392d74765b0d56145fa3e68e88e595fd25f3230943",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1715fee005b3a15dd974f475375126e61276d7612f91073df10bf8e1cb5f5882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsCycle.zpowersEquivSupport {σ : Perm α} (hσ : IsCycle σ) :
    (Subgroup.zpowers σ) ≃ σ.support :=
  Equiv.ofBijective
    (fun (τ : ↥ ((Subgroup.zpowers σ) : Set (Perm α))) =>
      ⟨(τ : Perm α) (Classical.choose hσ), by
        obtain ⟨τ, n, rfl⟩ := τ
        erw [Finset.mem_coe, Subtype.coe_mk, zpow_apply_mem_support, mem_support]
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
        erw [Finset.mem_coe, mem_support] at hy
        obtain ⟨n, rfl⟩ := (Classical.choose_spec hσ).2 hy
        exact ⟨⟨σ ^ n, n, rfl⟩, rfl⟩)
#align equiv.perm.is_cycle.zpowers_equiv_support Equiv.Perm.IsCycle.zpowersEquivSupport

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant726594b615b4e2f8acae535a8bc03af55d6995b71d698e21623d06ae05f82e27.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2605e1918b96eecdca633b14ca542208f1b1c345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
