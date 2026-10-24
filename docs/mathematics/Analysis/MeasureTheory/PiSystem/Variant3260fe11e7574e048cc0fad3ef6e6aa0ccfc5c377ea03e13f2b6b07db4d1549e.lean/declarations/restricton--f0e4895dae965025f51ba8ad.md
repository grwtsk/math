# restrictOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:debf0b16f5de6bc0bc47d7f6d65a5761add8f8ad516afd9785b745637e417434",
  "kind": "def",
  "lexical_name": "restrictOn",
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
  "slug": "restricton--f0e4895dae965025f51ba8ad",
  "source": {
    "blob": "0598ddc4637f21d30b49d8ab119f4250b8c28da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 686,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0e4895dae965025f51ba8ad0b0985d89716e3d4224a76cad2a661f50caf023b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:debf0b16f5de6bc0bc47d7f6d65a5761add8f8ad516afd9785b745637e417434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictOn {s : Set α} (h : d.Has s) : DynkinSystem α where
  -- Porting note: `simp only []` required for a beta reduction
  Has t := d.Has (t ∩ s)
  has_empty := by simp [d.has_empty]
  has_compl {t} hts := by
    simp only []
    have : tᶜ ∩ s = (t ∩ s)ᶜ \ sᶜ := Set.ext fun x => by by_cases h : x ∈ s <;> simp [h]
    rw [this]
    exact
      d.has_diff (d.has_compl hts) (d.has_compl h)
        (compl_subset_compl.mpr <| inter_subset_right _ _)
  has_iUnion_nat {f} hd hf := by
    simp only []
    rw [iUnion_inter]
    refine' d.has_iUnion_nat _ hf
    exact hd.mono fun i j => Disjoint.mono (inter_subset_left _ _) (inter_subset_left _ _)
#align measurable_space.dynkin_system.restrict_on MeasurableSpace.DynkinSystem.restrictOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0598ddc4637f21d30b49d8ab119f4250b8c28da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
