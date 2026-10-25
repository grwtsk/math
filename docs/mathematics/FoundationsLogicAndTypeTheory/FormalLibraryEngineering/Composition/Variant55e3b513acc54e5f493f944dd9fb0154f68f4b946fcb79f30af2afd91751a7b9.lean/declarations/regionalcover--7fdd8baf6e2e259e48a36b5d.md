# regionalCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca5ecfdaa327c742a43fb9cea793be7e587d930a0027fc18bc943e9aee5cd735",
  "kind": "def",
  "lexical_name": "regionalCover",
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
  "slug": "regionalcover--7fdd8baf6e2e259e48a36b5d",
  "source": {
    "blob": "ab3a74768544cf6f4e30e18895d52cb906b07ef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fdd8baf6e2e259e48a36b5da1d996acb6556b79932b40f7424c967415d8e442",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca5ecfdaa327c742a43fb9cea793be7e587d930a0027fc18bc943e9aee5cd735`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def regionalCover (source : Source) (H : X → Prop) (D : Set X)
    (f : Source → X → ℝ) {n : ℕ} (cells : Fin n → Set X) (constants : Fin n → ℝ)
    (coverage : ∀ x ∈ D, ∃ i, x ∈ cells i)
    (children : ∀ i, ScopedProof source H (cells i) (fun s x ↦ f s x ≤ constants i)) :
    ScopedProof source H D (fun s x ↦ f s x ≤ regionalMaximum (List.ofFn constants)) :=
  .cover cells coverage (fun i ↦ .implication (children i) (by
    intro x _ _ h
    exact h.trans (le_regionalMaximum (List.mem_ofFn.mpr ⟨i, rfl⟩))))

/-- A separate tail proof remains mandatory and its constant joins the maximum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3a74768544cf6f4e30e18895d52cb906b07ef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
