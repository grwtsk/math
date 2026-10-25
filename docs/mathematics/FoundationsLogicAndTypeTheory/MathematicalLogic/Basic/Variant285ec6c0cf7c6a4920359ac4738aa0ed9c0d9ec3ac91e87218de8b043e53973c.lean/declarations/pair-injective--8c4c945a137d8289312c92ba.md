# pair_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f885a643-eeca-e9b2-f476-7860f2e3a24e",
  "kind": "theorem",
  "lexical_name": "pair_injective",
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
  "slug": "pair-injective--8c4c945a137d8289312c92ba",
  "source": {
    "blob": "b84d3134005502fa36af858313d8646a4edecb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1341,
    "line": 1319,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4c945a137d8289312c92ba8f29c41b82771f904fbd345ce9c813d9ab8bb94d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f885a643-eeca-e9b2-f476-7860f2e3a24e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1319–1341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_injective : Function.Injective2 pair := fun x x' y y' H => by
  have ae := ext_iff.1 H
  simp only [pair, mem_pair] at ae
  obtain rfl : x = x' := by
    cases' (ae {x}).1 (by simp) with h h
    · exact singleton_injective h
    · have m : x' ∈ ({x} : ZFSet) := by simp [h]
      rw [mem_singleton.mp m]
  have he : x = y → y = y' := by
    rintro rfl
    cases' (ae {x, y'}).2 (by simp only [eq_self_iff_true, or_true_iff]) with xy'x xy'xx
    · rw [eq_comm, ← mem_singleton, ← xy'x, mem_pair]
      exact Or.inr rfl
    · simpa [eq_comm] using (ext_iff.1 xy'xx y').1 (by simp)
  obtain xyx | xyy' := (ae {x, y}).1 (by simp)
  · obtain rfl := mem_singleton.mp ((ext_iff.1 xyx y).1 <| by simp)
    simp [he rfl]
  · obtain rfl | yy' := mem_pair.mp ((ext_iff.1 xyy' y).1 <| by simp)
    · simp [he rfl]
    · simp [yy']
#align Set.pair_injective ZFSet.pair_injective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant285ec6c0cf7c6a4920359ac4738aa0ed9c0d9ec3ac91e87218de8b043e53973c.lean#L1319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84d3134005502fa36af858313d8646a4edecb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
