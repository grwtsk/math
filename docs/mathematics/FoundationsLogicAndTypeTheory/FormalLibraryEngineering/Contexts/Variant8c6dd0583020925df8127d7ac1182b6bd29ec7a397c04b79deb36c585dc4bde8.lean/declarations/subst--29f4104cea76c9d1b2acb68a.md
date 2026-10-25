# subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e0df82a-12b0-04ed-19d9-7139059df176",
  "kind": "theorem",
  "lexical_name": "subst",
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
  "slug": "subst--29f4104cea76c9d1b2acb68a",
  "source": {
    "blob": "f8680e38a34c7eed0b92e66223e9980a7b0f36eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant8c6dd0583020925df8127d7ac1182b6bd29ec7a397c04b79deb36c585dc4bde8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29f4104cea76c9d1b2acb68a9a9054014e74cf6182cd07233f96a30c1b4eb3e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant8c6dd0583020925df8127d7ac1182b6bd29ec7a397c04b79deb36c585dc4bde8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e0df82a-12b0-04ed-19d9-7139059df176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subst (h : Scoped n M) (σ : Nat → Expr S)
    (hσ : ∀ i, i < n → Scoped m (σ i)) : Scoped m (M.subst σ) := by
  induction M generalizing n m σ with
  | var i => exact hσ i h
  | sort _ => trivial
  | app M N ihM ihN => exact ⟨ihM h.1 _ hσ, ihN h.2 _ hσ⟩
  | lam A b ihA ihb | pi A b ihA ihb =>
      refine ⟨ihA h.1 _ hσ, ihb h.2 _ ?_⟩
      intro i hi
      cases i with
      | zero => exact Nat.zero_lt_succ _
      | succ i =>
          exact (hσ i (Nat.lt_of_succ_lt_succ hi)).rename Nat.succ
            (fun _ hi => Nat.succ_lt_succ hi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant8c6dd0583020925df8127d7ac1182b6bd29ec7a397c04b79deb36c585dc4bde8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant8c6dd0583020925df8127d7ac1182b6bd29ec7a397c04b79deb36c585dc4bde8.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8680e38a34c7eed0b92e66223e9980a7b0f36eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
