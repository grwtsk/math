# frame_domain_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6504607d-349e-2af3-1b32-d9c6e82eea5e",
  "kind": "theorem",
  "lexical_name": "frame_domain_drop",
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
  "slug": "frame-domain-drop--e55d29e8c531c39f260ed7b4",
  "source": {
    "blob": "2e1a55517e60d102cb4397d4882ff100b98272e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 540,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e55d29e8c531c39f260ed7b4bb39fc3e9fb5af693d9b99331000655fdfa36027",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6504607d-349e-2af3-1b32-d9c6e82eea5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frame_domain_drop (hplain : ∀ I ∈ D, PlainLayer P C I)
    {Γ : List (Expr S)} {A B : Expr S}
    (hI : Profile P Γ A ∈ D) (hJ : Profile P (A :: Γ) B ∈ D) :
    potential P C D Γ A < potential P C D Γ (.pi A B) := by
  have hc : Profile P Γ A ∈ D ∧ ActiveLayer P C (Profile P (A :: Γ) B) :=
    ⟨hI, (hplain _ hJ).active⟩
  simp only [potential, if_pos hc, if_pos hJ]
  omega

open Classical in
/-- The potential counts positions, so valid thinning does not change it.
The equality is exact also under every dependent binder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variant0d451abb503d9b846379268c2b8621f9d2337d57dc14bb19fd7fa882d31013a5.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e1a55517e60d102cb4397d4882ff100b98272e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
