# delabFinsetExpect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94b5e7354fd08caea685ea0df7a814421274af86fc1b83b395b52b318c6dccbc",
  "kind": "def",
  "lexical_name": "delabFinsetExpect",
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
  "slug": "delabfinsetexpect--d7c10f1e5213cc5b33898d56",
  "source": {
    "blob": "b26328990257b1736db4a208c2d3b96c78fea226",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7c10f1e5213cc5b33898d567b137e9f6d27ea7a2e3b352f2c25b1980d47cf11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94b5e7354fd08caea685ea0df7a814421274af86fc1b83b395b52b318c6dccbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[scoped app_delab Finset.expect] def delabFinsetExpect : Delab :=
  whenPPOption getPPNotation <| withOverApp 6 <| do
  let #[_, _, _, _, s, f] := (← getExpr).getAppArgs | failure
  guard <| f.isLambda
  let ppDomain ← getPPOption getPPFunBinderTypes
  let (i, body) ← withAppArg <| withBindingBodyUnusedName fun i => do
    return (i, ← delab)
  if s.isAppOfArity ``Finset.univ 2 then
    let binder ←
      if ppDomain then
        let ty ← withNaryArg 0 delab
        `(bigOpBinder| $(.mk i):ident : $ty)
      else
        `(bigOpBinder| $(.mk i):ident)
    `(𝔼 $binder:bigOpBinder, $body)
  else
    let ss ← withNaryArg 4 <| delab
    `(𝔼 $(.mk i):ident ∈ $ss, $body)

end BigOperators

open scoped BigOperators

namespace Finset
section AddCommMonoid
variable [AddCommMonoid M] [Module ℚ≥0 M] [AddCommMonoid N] [Module ℚ≥0 N] {s t : Finset ι}
  {f g : ι → M} {p q : ι → Prop} [DecidablePred p] [DecidablePred q]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b26328990257b1736db4a208c2d3b96c78fea226` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
