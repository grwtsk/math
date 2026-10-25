# fixInduction'_fwd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0f60127-451f-3d2f-dade-f2af2bf3bd96",
  "kind": "theorem",
  "lexical_name": "fixInduction'_fwd",
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
  "slug": "fixinduction-fwd--885108bfa28cb8d1c50e51da",
  "source": {
    "blob": "c45c5bbe2548b32d92ed119fc05397273cf7ee73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 336,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:885108bfa28cb8d1c50e51dad1f3874bf39b8e7b4e290fa2cb0a3c3357d0baac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0f60127-451f-3d2f-dade-f2af2bf3bd96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixInduction'_fwd {C : α → Sort*} {f : α →. β ⊕ α} {b : β} {a a' : α} (h : b ∈ f.fix a)
    (h' : b ∈ f.fix a') (fa : Sum.inr a' ∈ f a)
    (hbase : ∀ a_final : α, Sum.inl b ∈ f a_final → C a_final)
    (hind : ∀ a₀ a₁ : α, b ∈ f.fix a₁ → Sum.inr a₁ ∈ f a₀ → C a₁ → C a₀) :
    @fixInduction' _ _ C _ _ _ h hbase hind = hind a a' h' fa (fixInduction' h' hbase hind) := by
  unfold fixInduction'
  rw [fixInduction_spec]
  -- Porting note: the explicit motive required because `simp` does not apply `Part.get_eq_of_mem`
  refine Eq.rec (motive := fun x e =>
      Sum.casesOn (motive := fun y => (f a).get (dom_of_mem_fix h) = y → C a) x ?_ ?_
      (Eq.trans (Part.get_eq_of_mem fa (dom_of_mem_fix h)) e) = _) ?_
    (Part.get_eq_of_mem fa (dom_of_mem_fix h)).symm
  simp

variable (f : α →. β)

/-- Image of a set under a partial function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45c5bbe2548b32d92ed119fc05397273cf7ee73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
