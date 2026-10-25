# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dff8a86a68a93a34a66e0ef02f9acae63f3dab2932b534a782e8f2f48e237b4f",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--55dd1bbeaa3f07ef6fd5eac2",
  "source": {
    "blob": "480e18292b7b31f65791cbddd5c52d84dffdcca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variante7013c810a23319931d678e71a60f0ba5ffb5af365c5f1ea7038c37d3e4de77b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55dd1bbeaa3f07ef6fd5eac211ad930998659bbb28c37053ffb19ed3cbd18b01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variante7013c810a23319931d678e71a60f0ba5ffb5af365c5f1ea7038c37d3e4de77b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dff8a86a68a93a34a66e0ef02f9acae63f3dab2932b534a782e8f2f48e237b4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map (aig : AIG α) (target : MapTarget aig len) : RefVecEntry α len :=
  go aig 0 (by omega) (.emptyWithCapacity len) target.vec target.func
where
  @[specialize]
  go {len : Nat} (aig : AIG α) (idx : Nat) (hidx : idx ≤ len) (s : RefVec aig idx)
      (input : RefVec aig len) (f : (aig : AIG α) → Ref aig → Entrypoint α)
      [LawfulOperator α Ref f] [LawfulMapOperator α f] :
      RefVecEntry α len :=
    if hidx : idx < len then
      let res := f aig (input.get idx hidx)
      let aig := res.aig
      let newRef := res.ref
      have := by
        intros
        apply LawfulOperator.le_size_of_le_aig_size
        omega
      let input := input.cast this
      let s := s.cast this
      let s := s.push newRef
      go aig (idx + 1) (by omega) s input f
    else
      have : idx = len := by omega
      ⟨aig, this ▸ s⟩
  termination_by len - idx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variante7013c810a23319931d678e71a60f0ba5ffb5af365c5f1ea7038c37d3e4de77b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variante7013c810a23319931d678e71a60f0ba5ffb5af365c5f1ea7038c37d3e4de77b.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480e18292b7b31f65791cbddd5c52d84dffdcca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
