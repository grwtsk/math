# enumerate_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5deb7d5-d41b-ba73-079c-f944285ad60b",
  "kind": "theorem",
  "lexical_name": "enumerate_inj",
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
  "slug": "enumerate-inj--e4daaa0c065a432ccc136ab3",
  "source": {
    "blob": "f35eaceede7828d03a6bd91ac599359e2465debd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enumerate/Variant6a5e07119d5a090fe5272c487c37ac896d758fbd8581d9298d2099427c2ac6dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4daaa0c065a432ccc136ab3fc459a760fa531b4ed8045c3b0c2c341813e87c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enumerate/Variant6a5e07119d5a090fe5272c487c37ac896d758fbd8581d9298d2099427c2ac6dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5deb7d5-d41b-ba73-079c-f944285ad60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem enumerate_inj {n₁ n₂ : ℕ} {a : α} {s : Set α} (h_sel : ∀ s a, sel s = some a → a ∈ s)
    (h₁ : enumerate sel s n₁ = some a) (h₂ : enumerate sel s n₂ = some a) : n₁ = n₂ := by
  wlog! hn : n₁ ≤ n₂ generalizing n₁ n₂
  · exact (this h₂ h₁ hn.le).symm
  rcases Nat.le.dest hn with ⟨m, rfl⟩
  clear hn
  induction n₁ generalizing s with
  | zero =>
    cases m with
    | zero => rfl
    | succ m =>
      have h' : enumerate sel (s \ {a}) m = some a := by
        simp_all only [enumerate, Nat.add_eq, zero_add]; exact h₂
      have : a ∈ s \ {a} := enumerate_mem sel h_sel h'
      simp_all
  | succ k ih =>
    rw [show k + 1 + m = (k + m) + 1 by lia] at h₂
    cases h : sel s <;> simp_all [enumerate]; tauto

end Enumerate

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enumerate/Variant6a5e07119d5a090fe5272c487c37ac896d758fbd8581d9298d2099427c2ac6dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Enumerate/Variant6a5e07119d5a090fe5272c487c37ac896d758fbd8581d9298d2099427c2ac6dc.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f35eaceede7828d03a6bd91ac599359e2465debd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
