# instLocallyFiniteOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59e40cab1b113a496b3f1ca7caf7b2100a0bd3758726d70528c85a204bb4e442",
  "kind": "instance",
  "lexical_name": "instLocallyFiniteOrder",
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
  "slug": "instlocallyfiniteorder--9c7e3f1429b8a0cd853830f4",
  "source": {
    "blob": "65aab88bc027f2ab723f46686e7b1c1b6a02e2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c7e3f1429b8a0cd853830f47fa61d92e622a09b3046cb06ca644f2cd1ddf07c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59e40cab1b113a496b3f1ca7caf7b2100a0bd3758726d70528c85a204bb4e442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLocallyFiniteOrder : LocallyFiniteOrder (Σ i, α i) where
  finsetIcc := sigmaLift fun _ => Icc
  finsetIco := sigmaLift fun _ => Ico
  finsetIoc := sigmaLift fun _ => Ioc
  finsetIoo := sigmaLift fun _ => Ioo
  finset_mem_Icc := fun ⟨i, a⟩ ⟨j, b⟩ ⟨k, c⟩ => by
    simp_rw [mem_sigmaLift, le_def, mem_Icc, exists_and_left, ← exists_and_right, ← exists_prop]
    exact exists₂_congr fun _ _ => by constructor <;> rintro ⟨⟨⟩, ht⟩ <;> exact ⟨rfl, ht⟩
  finset_mem_Ico := fun ⟨i, a⟩ ⟨j, b⟩ ⟨k, c⟩ => by
    simp_rw [mem_sigmaLift, le_def, lt_def, mem_Ico, exists_and_left, ← exists_and_right, ←
      exists_prop]
    exact exists₂_congr fun _ _ => by constructor <;> rintro ⟨⟨⟩, ht⟩ <;> exact ⟨rfl, ht⟩
  finset_mem_Ioc := fun ⟨i, a⟩ ⟨j, b⟩ ⟨k, c⟩ => by
    simp_rw [mem_sigmaLift, le_def, lt_def, mem_Ioc, exists_and_left, ← exists_and_right, ←
      exists_prop]
    exact exists₂_congr fun _ _ => by constructor <;> rintro ⟨⟨⟩, ht⟩ <;> exact ⟨rfl, ht⟩
  finset_mem_Ioo := fun ⟨i, a⟩ ⟨j, b⟩ ⟨k, c⟩ => by
    simp_rw [mem_sigmaLift, lt_def, mem_Ioo, exists_and_left, ← exists_and_right, ← exists_prop]
    exact exists₂_congr fun _ _ => by constructor <;> rintro ⟨⟨⟩, ht⟩ <;> exact ⟨rfl, ht⟩

section

variable (a b : Σ i, α i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant15d301f12b83a6cffcc5507e1625fc6f38d07bf6c2de58128c49e5a01be5b64f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65aab88bc027f2ab723f46686e7b1c1b6a02e2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
