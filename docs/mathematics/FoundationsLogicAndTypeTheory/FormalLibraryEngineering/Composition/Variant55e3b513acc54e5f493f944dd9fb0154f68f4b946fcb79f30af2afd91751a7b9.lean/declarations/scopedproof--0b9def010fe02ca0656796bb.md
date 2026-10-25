# ScopedProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4f18aaa20db0b5f1cee5cab06b9fde6077f858ab6b2cb48d481d2d2350812c0",
  "kind": "inductive",
  "lexical_name": "ScopedProof",
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
  "slug": "scopedproof--0b9def010fe02ca0656796bb",
  "source": {
    "blob": "ab3a74768544cf6f4e30e18895d52cb906b07ef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b9def010fe02ca0656796bbdba052bda4dc699ba044c8cf62abff9058ecd549",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4f18aaa20db0b5f1cee5cab06b9fde6077f858ab6b2cb48d481d2d2350812c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ScopedProof (source : Source) (H : X → Prop) :
    (domain : Set X) → (claim : Source → X → Prop) → Type (max u v)
  | leaf {D P} (proof : ∀ x ∈ D, H x → P source x) : ScopedProof source H D P
  | and {D P Q} (left : ScopedProof source H D P) (right : ScopedProof source H D Q) :
      ScopedProof source H D (fun s x ↦ P s x ∧ Q s x)
  | chooseLeft {D} {P Q : Source → X → Prop} (proof : ScopedProof source H D P) :
      ScopedProof source H D (fun s x ↦ P s x ∨ Q s x)
  | chooseRight {D} {P Q : Source → X → Prop} (proof : ScopedProof source H D Q) :
      ScopedProof source H D (fun s x ↦ P s x ∨ Q s x)
  | implication {D P Q} (proof : ScopedProof source H D P)
      (transfer : ∀ x ∈ D, H x → P source x → Q source x) : ScopedProof source H D Q
  | restrict {D E P} (proof : ScopedProof source H D P) (subset : E ⊆ D) :
      ScopedProof source H E P
  | cover {D P} {n : ℕ} (cells : Fin n → Set X)
      (coverage : ∀ x ∈ D, ∃ i, x ∈ cells i)
      (children : ∀ i, ScopedProof source H (cells i) P) : ScopedProof source H D P
  | coverTail {D P} {n : ℕ} (cells : Fin n → Set X) (tail : Set X)
      (coverage : ∀ x ∈ D, (∃ i, x ∈ cells i) ∨ x ∈ tail)
      (children : ∀ i, ScopedProof source H (cells i) P)
      (tailProof : ScopedProof source H tail P) : ScopedProof source H D P

/-- Every accepted composition proves its declared proposition on its own domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant55e3b513acc54e5f493f944dd9fb0154f68f4b946fcb79f30af2afd91751a7b9.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3a74768544cf6f4e30e18895d52cb906b07ef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
