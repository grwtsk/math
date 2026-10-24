# unitsCentralizerEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3523206a4ba7ceb5adf458ab2f91f460c8995b9549102a5d1652709f50247cde",
  "kind": "def",
  "lexical_name": "unitsCentralizerEquiv",
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
  "slug": "unitscentralizerequiv--6e439be286369e3f54616dd6",
  "source": {
    "blob": "e22c0ea6088f83f7dcd1f83ebb70b6b5fa1b4753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 283,
    "path": "GRWTSK/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e439be286369e3f54616dd6042581508839098b51577a186330d488d34bcf1d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3523206a4ba7ceb5adf458ab2f91f460c8995b9549102a5d1652709f50247cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitsCentralizerEquiv (x : Mˣ) :
    (Submonoid.centralizer ({↑x} : Set M))ˣ ≃* MulAction.stabilizer (ConjAct Mˣ) x :=
  MulEquiv.symm
  { toFun := MonoidHom.toHomUnits <|
      { toFun := fun u ↦ ⟨↑(ConjAct.ofConjAct u.1 : Mˣ), by
          rintro x ⟨rfl⟩
          have : (u : ConjAct Mˣ) • x = x := u.2
          rwa [ConjAct.smul_def, mul_inv_eq_iff_eq_mul, Units.ext_iff, eq_comm] at this⟩,
        map_one' := rfl,
        map_mul' := fun _ _ ↦ rfl }
    invFun := fun u ↦
      ⟨ConjAct.toConjAct (Units.map (Submonoid.centralizer ({↑x} : Set M)).subtype u), by
      change _ • _ = _
      simp only [ConjAct.smul_def, ConjAct.ofConjAct_toConjAct, mul_inv_eq_iff_eq_mul]
      exact Units.ext <| (u.1.2 x <| Set.mem_singleton _).symm⟩
    left_inv := fun _ ↦ by ext; rfl
    right_inv := fun _ ↦ by ext; rfl
    map_mul' := map_mul _ }

end Units
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ConjAct/Variant94f8d19ffe256775c19eef43755231d0b91c039361b599dcf4c00cede6cdb5d9.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e22c0ea6088f83f7dcd1f83ebb70b6b5fa1b4753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
