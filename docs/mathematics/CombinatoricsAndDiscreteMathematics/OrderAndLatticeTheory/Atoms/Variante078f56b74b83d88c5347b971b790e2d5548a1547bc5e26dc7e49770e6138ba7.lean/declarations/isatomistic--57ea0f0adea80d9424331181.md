# isAtomistic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9ec7122f6e31931bd46fe54a9580a957914cf0bc92358d623ba121a61bf4983",
  "kind": "instance",
  "lexical_name": "isAtomistic",
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
  "slug": "isatomistic--57ea0f0adea80d9424331181",
  "source": {
    "blob": "9fcd22832364b04b70ec324067556e2fcd1f1843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1071,
    "line": 1050,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variante078f56b74b83d88c5347b971b790e2d5548a1547bc5e26dc7e49770e6138ba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57ea0f0adea80d9424331181c4f93a7e04278d595e41d421cae8262082adea62",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variante078f56b74b83d88c5347b971b790e2d5548a1547bc5e26dc7e49770e6138ba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9ec7122f6e31931bd46fe54a9580a957914cf0bc92358d623ba121a61bf4983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1050–1071.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isAtomistic [∀ i, CompleteLattice (π i)] [∀ i, IsAtomistic (π i)] :
    IsAtomistic (∀ i, π i) where
  eq_sSup_atoms s := by
    classical
    refine ⟨{ f | IsAtom f ∧ f ≤ s }, ?_, by simp; tauto⟩
    ext i
    rw [← sSup_atoms_le_eq (s i)]
    simp_rw [isAtom_iff_eq_single]
    refine le_antisymm ?le ?ge
    case le =>
      refine sSup_le fun a ⟨ha, hle⟩ => ?_
      refine le_sSup ⟨⟨_, ⟨_, _, ha, rfl⟩, ?_⟩, by simp⟩
      intro j; by_cases hij : j = i
      case pos => subst hij; simpa
      case neg => simp [hij]
    case ge =>
      refine sSup_le ?_
      rintro _ ⟨⟨_, ⟨j, a, ha, rfl⟩, hle⟩, rfl⟩
      by_cases hij : i = j; case neg => simp [Function.update_noteq hij]
      subst hij; simp only [Function.update_same]
      refine le_sSup ⟨ha, by simpa using hle i⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variante078f56b74b83d88c5347b971b790e2d5548a1547bc5e26dc7e49770e6138ba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Atoms/Variante078f56b74b83d88c5347b971b790e2d5548a1547bc5e26dc7e49770e6138ba7.lean#L1050).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fcd22832364b04b70ec324067556e2fcd1f1843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
