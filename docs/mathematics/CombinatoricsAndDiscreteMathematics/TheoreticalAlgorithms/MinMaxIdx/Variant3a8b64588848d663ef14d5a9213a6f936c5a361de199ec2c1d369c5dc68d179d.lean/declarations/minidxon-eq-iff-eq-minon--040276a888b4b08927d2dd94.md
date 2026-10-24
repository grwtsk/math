# minIdxOn_eq_iff_eq_minOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27a6fabd-df00-6bc7-31dd-ac7d88c5c0fc",
  "kind": "theorem",
  "lexical_name": "minIdxOn_eq_iff_eq_minOn",
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
  "slug": "minidxon-eq-iff-eq-minon--040276a888b4b08927d2dd94",
  "source": {
    "blob": "0b88f7fa1af57c91a6cad52f061d6e0d652c69a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:040276a888b4b08927d2dd947560a72df94fd9d6b1a0e4bd2599301ba9c6ca85",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27a6fabd-df00-6bc7-31dd-ac7d88c5c0fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem minIdxOn_eq_iff_eq_minOn [LE β] [DecidableLE β] [LT β] [IsLinearPreorder β]
    [LawfulOrderLT β] {f : α → β} {xs : List α} (h : xs ≠ []) {i : Nat} :
    xs.minIdxOn f h = i ↔ ∃ hi : i < xs.length, xs[i] = xs.minOn f h ∧
      ∀ (j : Nat) (hj : j < i), f (xs.minOn f h) < f xs[j] := by
  apply Iff.intro
  · rintro rfl
    refine ⟨List.minIdxOn_lt_length h, List.getElem_minIdxOn h, ?_⟩
    intro j hj
    exact List.apply_minOn_lt_apply_getElem_of_lt_minIdxOn h hj
  · rintro ⟨hlt, heq, h'⟩
    specialize h' (xs.minIdxOn f h)
    simp only [List.getElem_minIdxOn] at h'
    apply le_antisymm
    · apply List.minIdxOn_le_of_apply_getElem_le_apply_minOn h hlt
      simp [heq, le_refl]
    · simpa [lt_irrefl] using h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxIdx/Variant3a8b64588848d663ef14d5a9213a6f936c5a361de199ec2c1d369c5dc68d179d.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b88f7fa1af57c91a6cad52f061d6e0d652c69a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
