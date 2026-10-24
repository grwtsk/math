# subNatNat_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2280ace-715a-43dd-2e38-b898acc31b08",
  "kind": "theorem",
  "lexical_name": "subNatNat_add",
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
  "slug": "subnatnat-add--242a32e717c2bd3d897dd77e",
  "source": {
    "blob": "332a316038ca1cdb95db0efd1d00a172bf2e6463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 247,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2ec3cd1bf44af63b1c592270b8c87bfe2b8ff4201fd0b22f6733abf79319fdd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:242a32e717c2bd3d897dd77ee29e456bf8c179437dc2bc17304f6859817bef4b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2ec3cd1bf44af63b1c592270b8c87bfe2b8ff4201fd0b22f6733abf79319fdd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2280ace-715a-43dd-2e38-b898acc31b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subNatNat_add (m n k : Nat) : subNatNat (m + n) k = m + subNatNat n k := by
  cases n.lt_or_ge k with
  | inl h' =>
    simp [subNatNat_of_lt h', succ_pred_eq_of_pos (Nat.sub_pos_of_lt h')]
    conv => lhs; rw [← Nat.sub_add_cancel (Nat.le_of_lt h')]
    apply subNatNat_add_add
  | inr h' => simp [subNatNat_of_le h',
      subNatNat_of_le (Nat.le_trans h' (le_add_left ..)), Nat.add_sub_assoc h']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2ec3cd1bf44af63b1c592270b8c87bfe2b8ff4201fd0b22f6733abf79319fdd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2ec3cd1bf44af63b1c592270b8c87bfe2b8ff4201fd0b22f6733abf79319fdd0.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `332a316038ca1cdb95db0efd1d00a172bf2e6463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
