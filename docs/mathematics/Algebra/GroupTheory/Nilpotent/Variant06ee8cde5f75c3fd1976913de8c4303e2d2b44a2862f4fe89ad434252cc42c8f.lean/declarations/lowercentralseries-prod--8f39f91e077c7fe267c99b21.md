# lowerCentralSeries_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1408797175d66cebe86309621d6063bfdcba86d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 708,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56a7383a-b61b-75bf-af11-92b0d4a643ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:737cc4e1-5907-b8ae-ac53-1e772a1a0cf7",
  "kind": "theorem",
  "lexical_name": "lowerCentralSeries_prod",
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
  "slug": "lowercentralseries-prod--8f39f91e077c7fe267c99b21",
  "source": {
    "blob": "1408797175d66cebe86309621d6063bfdcba86d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 708,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f39f91e077c7fe267c99b21a42f8084777be229a217f6d462ade5f470636674",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:737cc4e1-5907-b8ae-ac53-1e772a1a0cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerCentralSeries_prod (n : ℕ) :
    lowerCentralSeries (G₁ × G₂) n = (lowerCentralSeries G₁ n).prod (lowerCentralSeries G₂ n) := by
  induction' n with n ih
  · simp
  · calc
      lowerCentralSeries (G₁ × G₂) n.succ = ⁅lowerCentralSeries (G₁ × G₂) n, ⊤⁆ := rfl
      _ = ⁅(lowerCentralSeries G₁ n).prod (lowerCentralSeries G₂ n), ⊤⁆ := by rw [ih]
      _ = ⁅(lowerCentralSeries G₁ n).prod (lowerCentralSeries G₂ n), (⊤ : Subgroup G₁).prod ⊤⁆ :=
        by simp
      _ = ⁅lowerCentralSeries G₁ n, (⊤ : Subgroup G₁)⁆.prod ⁅lowerCentralSeries G₂ n, ⊤⁆ :=
        (commutator_prod_prod _ _ _ _)
      _ = (lowerCentralSeries G₁ n.succ).prod (lowerCentralSeries G₂ n.succ) := rfl

#align lower_central_series_prod lowerCentralSeries_prod

/-- Products of nilpotent groups are nilpotent -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1408797175d66cebe86309621d6063bfdcba86d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
