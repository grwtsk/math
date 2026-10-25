# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73891948a16d9e5fc96b178b3f1b2ba402bf4eb8c0b0e93c3a1e591f98696fa2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7ca6adbfdb22de07b67ae16d",
  "source": {
    "blob": "1d4ad631d29b733f0864e9e481f1ecf0e90282f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantf360db884c7ce73dea399f75d23088979d9145b53b2c9ea71832641585465227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ca6adbfdb22de07b67ae16d49ae154121674e50dcea3ae1ae3a5ebd3ca8b7e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantf360db884c7ce73dea399f75d23088979d9145b53b2c9ea71832641585465227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73891948a16d9e5fc96b178b3f1b2ba402bf4eb8c0b0e93c3a1e591f98696fa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [DecidableEq α] [DecidableEq β] : SemilatticeInf (α ≃. β) :=
  { instPartialOrderPEquiv with
    inf := fun f g =>
      { toFun := fun a => if f a = g a then f a else none
        invFun := fun b => if f.symm b = g.symm b then f.symm b else none
        inv := fun a b => by
          have hf := @mem_iff_mem _ _ f a b
          have hg := @mem_iff_mem _ _ g a b
          simp only [Option.mem_def] at *
          grind }
    inf_le_left := fun _ _ _ _ => by simp only [coe_mk, mem_def]; split_ifs <;> simp [*]
    inf_le_right := fun _ _ _ _ => by simp only [coe_mk, mem_def]; split_ifs <;> simp [*]
    le_inf := fun f g h fg gh a b => by
      intro H
      have hf := fg a b H
      have hg := gh a b H
      simp only [Option.mem_def, PEquiv.coe_mk_apply] at *
      rw [hf, hg, ite_eq_left rfl] }

end Order

end PEquiv

namespace Equiv

variable {α : Type*} {β : Type*} {γ : Type*}

/-- Turns an `Equiv` into a `PEquiv` of the whole type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantf360db884c7ce73dea399f75d23088979d9145b53b2c9ea71832641585465227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantf360db884c7ce73dea399f75d23088979d9145b53b2c9ea71832641585465227.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d4ad631d29b733f0864e9e481f1ecf0e90282f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
