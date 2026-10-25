# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a0bfa75833a90cda15413affe0cd3bebe1023651631c88039ee9eee585b4f7a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1acd43b93ae20ab6def51919",
  "source": {
    "blob": "3e6393841c2ee3f3cafe0bd255e07302f93cee08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1acd43b93ae20ab6def51919b986f1bf97790ea8aef01aecb5449503c4a031fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a0bfa75833a90cda15413affe0cd3bebe1023651631c88039ee9eee585b4f7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CCPO Pred] : CCPO (PredTrans Pred EPred α) where
  has_csup {c} hc := by
    let c' : ((α → Pred) → EPred → Pred) → Prop := fun f => ∃ pt, c pt ∧ pt.apply = f
    have hc' : chain c' := by
      intro _ _ ⟨pf, hpf, hpf_eq⟩ ⟨pg, hpg, hpg_eq⟩
      subst hpf_eq; subst hpg_eq
      exact hc pf pg hpf hpg
    obtain ⟨sup, hsup⟩ := CCPO.has_csup hc'
    refine ⟨⟨sup⟩, fun q => ?_⟩
    constructor
    · intro h pt hpt
      exact (hsup q.apply).mp h pt.apply ⟨pt, hpt, rfl⟩
    · intro h
      exact (hsup q.apply).mpr fun f ⟨pf, hpf, hpf_eq⟩ => by subst hpf_eq; exact h pf hpf

/-- `Monad` instance for `PredTrans`: `pure` returns the postcondition applied to the value,
and `bind` threads the postcondition through the continuation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e6393841c2ee3f3cafe0bd255e07302f93cee08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
