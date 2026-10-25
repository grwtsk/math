# forallAltTelescope'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08c4fe361da75e84466da3c417b5f0c5f923e9a188a92676a4a34858cd2c882c",
  "kind": "def",
  "lexical_name": "forallAltTelescope'",
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
  "slug": "forallalttelescope--c934373f8480ae4ccb145e7c",
  "source": {
    "blob": "6027b98417777a9f95bf1707bf6380210910797f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c934373f8480ae4ccb145e7c78ca898a79a3ddcb77153590341f74da831c75b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08c4fe361da75e84466da3c417b5f0c5f923e9a188a92676a4a34858cd2c882c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def forallAltTelescope'
    {n} [Monad n] [MonadControlT MetaM n]
    {α} (origAltType : Expr) (altInfo : Match.AltParamInfo)
    (k : Array Expr → Array Expr → n α) : n α := do
  map2MetaM (fun k =>
    Match.forallAltVarsTelescope origAltType altInfo
      fun ys args _mask _bodyType => k ys args
  ) k

/--
Fvars/exprs introduced in the telescope of a matcher alternative during `transform`.

* `args` are the values passed to `instantiateLambda` on the original alt. They usually
  coincide with `fields`, but may include non-fvar values (e.g. `Unit.unit` for thunked alts).
* `fields` are the constructor-field fvars (proper fvar subset of `args`).
* `overlaps` are overlap-parameter fvars (splitter path only, for non-`casesOn` splitters).
* `discrEqs` are discriminant-equation fvars from the matcher's own type (`numDiscrEqs`).
* `extraEqs` are equation fvars added by the `addEqualities` flag.

**Example.** `transform` with `addEqualities := true` on a `Nat.casesOn` application
`Nat.casesOn (motive := …) n alt₀ alt₁` opens alt telescopes:
```
Alt 0 (zero):  (heq : n = Nat.zero) → motive Nat.zero
  ⟹ { args := #[], fields := #[], extraEqs := #[heq] }

Alt 1 (succ):  (k : Nat) → (heq : n = Nat.succ k) → motive (Nat.succ k)
  ⟹ { args := #[k], fields := #[k], extraEqs := #[heq] }
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant884b732f1cccd78b5f3348ba380b2db1c2b1cca424e4ea76003319ce4ed81f0e.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6027b98417777a9f95bf1707bf6380210910797f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
