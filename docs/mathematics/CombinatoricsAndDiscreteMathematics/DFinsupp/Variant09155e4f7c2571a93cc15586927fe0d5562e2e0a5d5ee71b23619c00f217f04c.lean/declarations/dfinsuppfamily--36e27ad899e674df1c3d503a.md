# dfinsuppFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dfe70f8667da00d030b232df9046123c17f9890b6471d3dee29ea27f9756a48",
  "kind": "def",
  "lexical_name": "dfinsuppFamily",
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
  "slug": "dfinsuppfamily--36e27ad899e674df1c3d503a",
  "source": {
    "blob": "dd93515178cb68f8851ef3e95c8df9dbccb426ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36e27ad899e674df1c3d503a52b87f001a86325d5f97e3703556e643c1daf75a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dfe70f8667da00d030b232df9046123c17f9890b6471d3dee29ea27f9756a48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dfinsuppFamily
    (f : Π (p : Π i, κ i), MultilinearMap R (fun i ↦ M i (p i)) (N p)) :
    MultilinearMap R (fun i => Π₀ j : κ i, M i j) (Π₀ t : Π i, κ i, N t) where
  toFun x :=
  { toFun := fun p => f p (fun i => x i (p i))
    support' := (Trunc.finChoice fun i => (x i).support').map fun s => ⟨
      Finset.univ.val.pi (fun i ↦ (s i).val) |>.map fun f i => f i (Finset.mem_univ _),
      fun p => by
        simp only [Multiset.mem_map, Multiset.mem_pi, Finset.mem_val, Finset.mem_univ,
          forall_true_left]
        simp_rw [or_iff_not_imp_right]
        intro h
        push_neg at h
        refine ⟨fun i _ => p i, fun i => (s i).prop _ |>.resolve_right ?_, rfl⟩
        exact mt ((f p).map_coord_zero (m := fun i => x i _) i) h⟩}
  map_update_add' {dec} m i x y := DFinsupp.ext fun p => by
    dsimp
    simp_rw [Function.apply_update (fun i m => m (p i)) m, DFinsupp.add_apply, (f p).map_update_add]
  map_update_smul' {dec} m i c x := DFinsupp.ext fun p => by
    dsimp
    simp_rw [Function.apply_update (fun i m => m (p i)) m, DFinsupp.smul_apply,
      (f p).map_update_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd93515178cb68f8851ef3e95c8df9dbccb426ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
