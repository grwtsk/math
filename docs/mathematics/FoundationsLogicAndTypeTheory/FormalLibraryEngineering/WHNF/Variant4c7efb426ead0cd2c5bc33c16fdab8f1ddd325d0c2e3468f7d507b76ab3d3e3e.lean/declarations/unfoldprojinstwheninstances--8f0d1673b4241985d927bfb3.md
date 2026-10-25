# unfoldProjInstWhenInstances?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c9f332ebae438a324eff24f1e8b9215af759237d54a5238c1642185ad7b2bdb",
  "kind": "def",
  "lexical_name": "unfoldProjInstWhenInstances?",
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
  "slug": "unfoldprojinstwheninstances--8f0d1673b4241985d927bfb3",
  "source": {
    "blob": "768e0c93dea2a79dd5ab505c68bbcac736238c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 822,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f0d1673b4241985d927bfb384f854e8550d4912a72d4a7f889d42028268da2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c9f332ebae438a324eff24f1e8b9215af759237d54a5238c1642185ad7b2bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 822–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def unfoldProjInstWhenInstances? (e : Expr) : MetaM (Option Expr) := do
  if (← getTransparency) matches .instances | .implicit then
    unfoldProjInst? e
  else
    return none

/--
When `true`, unfolding a `[reducible]` class field at `TransparencyMode.reducible` also unfolds
the associated instance projection at `TransparencyMode.instances`.

**Motivation:** Consider `a ≤ b` where `a b : Nat` and `LE.le` is `[reducible]`. Unfolding `LE.le`
gives `instLENat.1 a b`, which is stuck because `instLENat` is `[instance_reducible]` (not
`[reducible]`). Similarly, `stM m (ExceptT ε m) α` unfolds to an instance projection that is stuck
at `.reducible`. Without this option, marking a class field as `[reducible]` is pointless when the
instance providing it is only `[instance_reducible]`. This option makes the `[reducible]` annotation
on class fields work as the user expects by temporarily bumping to `.instances` for the projection.

See `unfoldDefault` for the implementation.
-/
register_builtin_option backward.whnf.reducibleClassField : Bool := {
  defValue := true
  descr    := "enables better support for unfolding type class fields marked as `[reducible]`"
}

/--
Default unfolding function. `e` is of the form `f.{us} a₁ ... aₙ`, and `fInfo` is the `ConstantInfo` for `f`.
This function has special support for unfolding class fields.
The support is particularly important when the user marks a class field as `[reducible]` and
the transparency mode is `.reducible`. For example, suppose `e` is `a ≤ b` where `a b : Nat`,
and `LE.le` is marked as `[reducible]`. Simply unfolding `LE.le` would give `instLENat.1 a b`,
which would be stuck because `instLENat` has transparency `[instance_reducible]`. To avoid this, when we unfold
a `[reducible]` class field, we also unfold the associated projection `instLENat.1` using
`withReducibleAndInstances` (i.e. `.instances` transparency), ultimately returning `Nat.le a b`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean#L822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768e0c93dea2a79dd5ab505c68bbcac736238c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
