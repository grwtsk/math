# isLimit_iff_omega0_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4c50a22dc16a45ae99dfec14590c1d44736d8f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c068f0063e6a67ea547be2772111c8b7596fa2c097802682ff905448bdb45899.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:897baaba-b311-ec66-cf63-c745f69e088a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:712d8c45-4135-d6cf-8329-bc1897bc8345",
  "kind": "theorem",
  "lexical_name": "isLimit_iff_omega0_dvd",
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
  "slug": "islimit-iff-omega0-dvd--7a9ced6de5a3997c0e600fc7",
  "source": {
    "blob": "b4c50a22dc16a45ae99dfec14590c1d44736d8f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1177,
    "line": 1162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantc068f0063e6a67ea547be2772111c8b7596fa2c097802682ff905448bdb45899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a9ced6de5a3997c0e600fc7565119f1ca78fdde56fce5d78ce752b71d115564",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantc068f0063e6a67ea547be2772111c8b7596fa2c097802682ff905448bdb45899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:712d8c45-4135-d6cf-8329-bc1897bc8345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1162–1177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLimit_iff_omega0_dvd {a : Ordinal} : IsLimit a ↔ a ≠ 0 ∧ ω ∣ a := by
  refine ⟨fun l => ⟨l.ne_zero, ⟨a / ω, le_antisymm ?_ (mul_div_le _ _)⟩⟩, fun h => ?_⟩
  · refine (limit_le l).2 fun x hx => le_of_lt ?_
    rw [← div_lt omega0_ne_zero, ← succ_le_iff, le_div omega0_ne_zero, mul_succ,
      add_le_of_limit isLimit_omega0]
    intro b hb
    rcases lt_omega0.1 hb with ⟨n, rfl⟩
    exact
      (add_le_add_right (mul_div_le _ _) _).trans
        (lt_sub.1 <| nat_lt_limit (isLimit_sub l hx) _).le
  · rcases h with ⟨a0, b, rfl⟩
    refine isLimit_mul_left isLimit_omega0 (Ordinal.pos_iff_ne_zero.2 <| mt ?_ a0)
    intro e
    simp only [e, mul_zero]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantc068f0063e6a67ea547be2772111c8b7596fa2c097802682ff905448bdb45899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantc068f0063e6a67ea547be2772111c8b7596fa2c097802682ff905448bdb45899.lean#L1162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c50a22dc16a45ae99dfec14590c1d44736d8f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
