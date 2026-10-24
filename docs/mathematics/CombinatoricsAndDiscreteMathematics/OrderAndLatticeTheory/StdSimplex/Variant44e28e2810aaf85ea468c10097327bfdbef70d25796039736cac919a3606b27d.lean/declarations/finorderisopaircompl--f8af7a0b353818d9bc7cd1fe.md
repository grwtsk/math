# finOrderIsoPairCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e003eb91dd736dd17696c0df4185f3d7568951e7da430684a51ec491908e3018",
  "kind": "def",
  "lexical_name": "finOrderIsoPairCompl",
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
  "slug": "finorderisopaircompl--f8af7a0b353818d9bc7cd1fe",
  "source": {
    "blob": "94b7115803732ead52de580990f069fb19683e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 538,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8af7a0b353818d9bc7cd1fe607b12f2e56bd41f2b0a1aaa74928ef0c54f5eff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e003eb91dd736dd17696c0df4185f3d7568951e7da430684a51ec491908e3018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finOrderIsoPairCompl {n : ℕ} (i j : Fin (n + 2)) (h : i < j) :
    Fin n ≃o ({i, j}ᶜ : Finset _) where
  toEquiv := by
    refine Equiv.ofBijective
      (fun k ↦ ⟨j.succAbove ((i.castPred (Fin.ne_last_of_lt h)).succAbove k), ?_⟩)
        ⟨fun _ _ hk ↦ ?_, fun ⟨l, hl⟩ ↦ ?_⟩
    · grind [compl_insert, mem_compl, Fin.succAbove, Fin.castPred]
    · exact ((Fin.succAboveOrderEmb (i.castPred (Fin.ne_last_of_lt h))).trans
        (Fin.succAboveOrderEmb j)).injective (by rwa [Subtype.ext_iff] at hk)
    · obtain ⟨m, rfl⟩ : l ∈ Set.range j.succAbove := by
        grind [Fin.range_succAbove, mem_compl, Fin.succAbove]
      obtain ⟨k, hk⟩ : m ∈ Set.range (i.castPred (Fin.ne_last_of_lt h)).succAbove := by
        grind [Fin.range_succAbove, compl_insert, Fin.succAbove, Fin.castPred]
      exact ⟨k, by simp [hk]⟩
  map_rel_iff' :=
    ((Fin.succAboveOrderEmb (i.castPred (Fin.ne_last_of_lt h))).trans
      (Fin.succAboveOrderEmb j)).map_rel_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b7115803732ead52de580990f069fb19683e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
