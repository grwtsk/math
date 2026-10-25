# Cofix.abs_repr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c8a29b1-7147-a2ce-ef74-fd19375e2256",
  "kind": "theorem",
  "lexical_name": "Cofix.abs_repr",
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
  "slug": "cofix-abs-repr--f0a18a5ba40ed65c052de138",
  "source": {
    "blob": "6da5cafe59314ad6223cbcf5d1aa599d6bf55fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0a18a5ba40ed65c052de138235d7804b4571c809d31948ff8f41c83bc8ddd2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c8a29b1-7147-a2ce-ef74-fd19375e2256`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cofix.abs_repr {α} (x : Cofix F α) : Quot.mk _ (Cofix.repr x) = x := by
  let R := fun x y : Cofix F α => abs (repr y) = x
  refine' Cofix.bisim₂ R _ _ _ rfl
  clear x;
  rintro x y h;
  subst h
  dsimp [Cofix.dest, Cofix.abs]
  induction y using Quot.ind
  simp only [Cofix.repr, M.dest_corec, abs_map, MvQPF.abs_repr, Function.comp]
  conv =>
    congr
    rfl
    rw [Cofix.dest]
  rw [MvFunctor.map_map, MvFunctor.map_map, ←appendFun_comp_id, ←appendFun_comp_id]
  apply liftR_map_last
  intros
  rfl
#align mvqpf.cofix.abs_repr MvQPF.Cofix.abs_repr

end MvQPF

namespace Mathlib.Tactic.MvBisim

open Lean Expr Elab Term Tactic Meta Qq

/-- tactic for proof by bisimulation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantf7f8334e04db9500d9868c96f161cf3fa8f75f43e68f1a3c17a4d24aafafb74a.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6da5cafe59314ad6223cbcf5d1aa599d6bf55fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
