# explore_eq_applyPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bf75658-80db-5fe3-5d64-abe0d31bd94e",
  "kind": "theorem",
  "lexical_name": "explore_eq_applyPartition",
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
  "slug": "explore-eq-applypartition--81a6f614c76fc684ba5cc11b",
  "source": {
    "blob": "5ac2ee3ea36c51f16cef1be36adb3bcd1c274a20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81a6f614c76fc684ba5cc11b118c659066fde83ddbadb812df10c4427fd09cc7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bf75658-80db-5fe3-5d64-abe0d31bd94e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explore_eq_applyPartition [Ord α] {k : α → Ordering} (init : δ) (l : Impl α β)
    (f : δ → ExplorationStep α β k → δ)
    (hfr : ∀ {k hk v ll c rr r init}, f (f init (.lt k hk v r)) (.eq ll c rr) = f init (.eq ll c (rr ++ ⟨k, v⟩ :: r)))
    (hfl : ∀ {k hk v ll c rr l init}, f (f init (.gt l k hk v)) (.eq ll c rr) = f init (.eq (l ++ ⟨k, v⟩ :: ll) c rr)) :
    explore k init f l = applyPartition k l fun l c _ r => f init (.eq l c r) := by
  rw [applyPartition]
  suffices ∀ L, (h : L.contains' k → l.contains' k) →
    explore k init f l = applyPartition.go k L (fun l_1 c x r => f init (eq l_1 c r)) [] l h [] from this l id
  intro L hL
  induction l generalizing init
  · rename_i sz k' v' l r ih₁ ih₂
    rw [explore, applyPartition.go]
    split <;> rename_i hcmp
    · simp only [hcmp, contains'] at hL
      rw [ih₁ _ hL]
      conv => rhs; rw [applyPartition_go_step]
      simp only [List.nil_append, List.append_nil]
      congr
      ext ll c hc rr
      apply hfr
    · simp
    · simp only [hcmp, contains'] at hL
      rw [ih₂ _ hL]
      conv => rhs; rw [applyPartition_go_step]
      simp only [List.nil_append, List.append_assoc, List.singleton_append, List.append_nil]
      congr
      ext ll c hc rr
      apply hfl
  · simp [explore, applyPartition.go]

/--
General "update the mapping for a given key" function.
Internal implementation detail of the tree map
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac2ee3ea36c51f16cef1be36adb3bcd1c274a20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
