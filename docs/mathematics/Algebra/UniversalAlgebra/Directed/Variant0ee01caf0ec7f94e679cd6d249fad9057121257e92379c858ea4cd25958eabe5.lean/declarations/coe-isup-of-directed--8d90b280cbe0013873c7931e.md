# coe_iSup_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a031b9a-088d-8e19-673a-863e00359606",
  "kind": "theorem",
  "lexical_name": "coe_iSup_of_directed",
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
  "slug": "coe-isup-of-directed--8d90b280cbe0013873c7931e",
  "source": {
    "blob": "1ac0cff335a0e9eca79dcea8eb71a67efad1b022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 37,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d90b280cbe0013873c7931ea1e317bb752b3dc917d8912b80d12d3d30e56118",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a031b9a-088d-8e19-673a-863e00359606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_iSup_of_directed (dir : Directed (· ≤ ·) K) : ↑(iSup K) = ⋃ i, (K i : Set A) :=
  let s : Subalgebra R A :=
    { __ := Subsemiring.copy _ _ (Subsemiring.coe_iSup_of_directed dir).symm
      algebraMap_mem' := fun _ ↦ Set.mem_iUnion.2
        ⟨Classical.arbitrary ι, Subalgebra.algebraMap_mem _ _⟩ }
  have : iSup K = s := le_antisymm
    (iSup_le fun i ↦ le_iSup (fun i ↦ (K i : Set A)) i) (Set.iUnion_subset fun _ ↦ le_iSup K _)
  this.symm ▸ rfl

variable (K)

-- Porting note (https://github.com/leanprover-community/mathlib4/issues/11215): TODO: turn `hT` into an assumption `T ≤ iSup K`.
-- That's what `Set.iUnionLift` needs
-- Porting note: the proofs of `map_{zero,one,add,mul}` got a bit uglier, probably unification trbls
/-- Define an algebra homomorphism on a directed supremum of subalgebras by defining
it on each subalgebra, and proving that it agrees on the intersection of subalgebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Directed/Variant0ee01caf0ec7f94e679cd6d249fad9057121257e92379c858ea4cd25958eabe5.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac0cff335a0e9eca79dcea8eb71a67efad1b022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
