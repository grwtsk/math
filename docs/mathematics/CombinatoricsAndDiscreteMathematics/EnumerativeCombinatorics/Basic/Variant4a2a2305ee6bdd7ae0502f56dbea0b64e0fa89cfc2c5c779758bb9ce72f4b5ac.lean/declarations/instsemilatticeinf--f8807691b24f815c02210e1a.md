# instSemilatticeInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bd76a0c090c9fb906ff872771acdc8de139c20df8e7ed079acb586e24c29b4e",
  "kind": "instance",
  "lexical_name": "instSemilatticeInf",
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
  "slug": "instsemilatticeinf--f8807691b24f815c02210e1a",
  "source": {
    "blob": "f8006ac214189d24392163d1cc519bef90e5b71f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 252,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8807691b24f815c02210e1ac6659eb2699b0921a7278438caee2d44b9848866",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bd76a0c090c9fb906ff872771acdc8de139c20df8e7ed079acb586e24c29b4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemilatticeInf {α : Type*} [Order.Frame α] (s : α) : SemilatticeInf (Partition s) where
  inf P Q := removeBot {a | ∃ p ∈ P, ∃ q ∈ Q, a = p ⊓ q} (by
      rw [sSupIndep_iff_pairwiseDisjoint]
      intro a ha a' ha' h
      grind [Partition.eq_or_disjoint, Disjoint.inf_left, Disjoint.inf_left'])
    (by
      suffices sSup {a | ∃ p ∈ P, ∃ q ∈ Q, a = p ⊓ q} = sSup P ⊓ sSup Q by simpa
      rw [sSup_inf_sSup]
      refine le_antisymm ?_ ?_
      · exact sSup_le fun a ⟨p, hp, q, hq, ha⟩ ↦ le_iSup₂_of_le (p, q) ⟨hp, hq⟩ <| by grind
      · exact iSup₂_le fun (p, q) ⟨hp, hq⟩ ↦ le_sSup_of_le ⟨p, hp, q, hq, rfl⟩ (by simp))
  inf_le_left P Q a ha := by
    obtain ⟨⟨p, hp, q, hq, rfl⟩, h⟩ := ha
    grind [inf_le_left]
  inf_le_right P Q a ha := by
    obtain ⟨⟨p, hp, q, hq, rfl⟩, h⟩ := ha
    grind [inf_le_right]
  le_inf P Q R hQ hR a ha := by
    have ⟨q, hq⟩ := hQ ha
    have ⟨r, hr⟩ := hR ha
    refine ⟨q ⊓ r, ⟨?_, ?_⟩, ?_⟩ <;> grind [le_inf_iff, P.ne_bot_of_mem ha]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8006ac214189d24392163d1cc519bef90e5b71f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
