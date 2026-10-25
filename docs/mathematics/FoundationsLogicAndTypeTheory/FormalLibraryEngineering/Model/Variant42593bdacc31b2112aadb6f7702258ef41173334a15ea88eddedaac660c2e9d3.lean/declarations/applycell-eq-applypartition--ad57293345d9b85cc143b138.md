# applyCell_eq_applyPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e79702d8-4ebb-c148-97fb-8f5bae88ee3b",
  "kind": "theorem",
  "lexical_name": "applyCell_eq_applyPartition",
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
  "slug": "applycell-eq-applypartition--ad57293345d9b85cc143b138",
  "source": {
    "blob": "5ac2ee3ea36c51f16cef1be36adb3bcd1c274a20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad57293345d9b85cc143b13801bea65add5a4c9875412d528a77bcf4599e3994",
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

Occurrence: `result:e79702d8-4ebb-c148-97fb-8f5bae88ee3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyCell_eq_applyPartition [Ord α] (k : α) (l : Impl α β)
    (f : (c : Cell α β (compare k)) → (l.contains' (compare k) → c.contains) → δ) :
    applyCell k l f = applyPartition (compare k) l (fun _ c hc _ => f c hc) := by
  rw [applyPartition]
  suffices ∀ L u v, (hL : l.contains' (compare k) ↔ L.contains' (compare k)) →
      applyCell k l f = applyPartition.go (compare k) L (fun _ c hc _ => f c (hc ∘ hL.1)) u l hL.2 v from
    this l [] [] Iff.rfl
  intro L u v hL
  induction l generalizing u v L
  · rename_i sz k' v' l r ih₁ ih₂
    simp only [applyCell, applyPartition.go]
    split <;> rename_i hcmp
    · exact ih₁ _ _ _ _ (by simpa [contains', hcmp] using hL)
    · rfl
    · exact ih₂ _ _ _ _ (by simpa [contains', hcmp] using hL)
  · simp [applyCell, applyPartition.go]

variable (α β) in
/--
Data structure used by the general tree-traversal function `explore`.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant42593bdacc31b2112aadb6f7702258ef41173334a15ea88eddedaac660c2e9d3.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac2ee3ea36c51f16cef1be36adb3bcd1c274a20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
