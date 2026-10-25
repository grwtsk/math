# elabDefWanted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a22b840c8a9e5b25f454a44efb21b5bc4e777a4fff51a26530afced5be94b19",
  "kind": "def",
  "lexical_name": "elabDefWanted",
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
  "slug": "elabdefwanted--3a47ca4f46a029233aa8b111",
  "source": {
    "blob": "0127b0d5b9669304194635d542c0d0d58a98fc0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 786,
    "line": 752,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a47ca4f46a029233aa8b111d0c41708bb6d7e91144b2c5e2a7d9018f2525e16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a22b840c8a9e5b25f454a44efb21b5bc4e777a4fff51a26530afced5be94b19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–786.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def elabDefWanted : CommandElab := fun stx => do
  match stx with
  | `($mods:declModifiers def_wanted $name $args* : $res $[:= $body?]?) =>
    elabWanted defWantedCmd stx mods name args res body?
  | _ => throwUnsupportedSyntax

/-- This typeclass instance would be a welcome contribution to the library!

The syntax mirrors `instance` (the name is optional, auto-generated from the class head if
absent) and the payload must be a typeclass. The placeholder is recorded as
`DefWanted (TheClass …)` like `def_wanted`, but additionally the declared name is registered so a
subsequent `theorem_wanted` / `def_wanted` / `instance_wanted` can use it via typeclass synth
without an explicit `❰…❱` reference — matching the auto-availability of regular `instance`
declarations.

Inclusion is **on use** (like `variable [inst]`): a later declaration carries a `[d_…]` binder
for an earlier `instance_wanted` only when its statement or body actually uses it. A declaration
that does
not need the instance does not carry it, so unrelated instances do not accumulate as a file grows.
The registration is **module-scoped and order-sensitive**: only `instance_wanted`s declared earlier
in the current file are candidates. Registrations persist across `section` / `namespace` boundaries
within the file and are dropped at module boundaries (the placeholder defs are `private`, so
nothing propagates to importers).

Typical usage:
```
def_wanted Jacobian (C : Over (Spec (.of k))) [IsProper C.hom] : Over (Spec (.of k))

instance_wanted : GrpObj (❰Jacobian❱ C)

theorem_wanted comp_ofCurve … : … = η[❰Jacobian❱ C]
  -- automatically picks up the GrpObj instance, no haveI needed
```
-/
@[command_parser]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0127b0d5b9669304194635d542c0d0d58a98fc0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
