# mkContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2833804d424e6185ce3a0d2d32489c61970dafc26de995f46cbf4b3cdc7e4ae",
  "kind": "def",
  "lexical_name": "mkContext",
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
  "slug": "mkcontext--1a3c4f0a623a8e46feeffa9f",
  "source": {
    "blob": "12efcf54fc8dfee599ff645ab9e167bd5a499023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variante843d2ecf92df4af5adb1d1d4c5142ef938620abf8393815ea1b6e0a0fcb4754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a3c4f0a623a8e46feeffa9f9b12f4a6c2d33038d966b68bc5b27194b8f2892b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variante843d2ecf92df4af5adb1d1d4c5142ef938620abf8393815ea1b6e0a0fcb4754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2833804d424e6185ce3a0d2d32489c61970dafc26de995f46cbf4b3cdc7e4ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkContext (e : Expr) : MetaM Context := do
  let α ← inferType e
  let c ← synthInstance (← mkAppM ``AddCommMonoid #[α])
  let cg ← synthInstance? (← mkAppM ``AddCommGroup #[α])
  let u ← mkFreshLevelMVar
  _ ← isDefEq (.sort (.succ u)) (← inferType α)
  let α0 ← Expr.ofNat α 0
  match cg with
  | some cg => return ⟨α, u, α0, true, cg⟩
  | _ => return ⟨α, u, α0, false, c⟩

/-- The monad for `Abel` contains, in addition to the `AtomM` state,
some information about the current type we are working over, so that we can consistently
use group lemmas or monoid lemmas as appropriate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variante843d2ecf92df4af5adb1d1d4c5142ef938620abf8393815ea1b6e0a0fcb4754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variante843d2ecf92df4af5adb1d1d4c5142ef938620abf8393815ea1b6e0a0fcb4754.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12efcf54fc8dfee599ff645ab9e167bd5a499023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
