# delabFinsetFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13ac8719ce966d9b7948a0e98f3d4375780f460bfe2b9c26505f72f795514680",
  "kind": "def",
  "lexical_name": "delabFinsetFilter",
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
  "slug": "delabfinsetfilter--f08fdbc67627f6e27b20fe9d",
  "source": {
    "blob": "ea06b4b180858caf68d01b6c58ad020ae51f73c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f08fdbc67627f6e27b20fe9d9c864a99ef46787016afc9b9ef432b2101be9aa5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13ac8719ce966d9b7948a0e98f3d4375780f460bfe2b9c26505f72f795514680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[app_delab Finset.filter] def delabFinsetFilter : Delab :=
  whenPPOption getPPNotation do
  let #[_, p, _, t] := (← getExpr).getAppArgs | failure
  guard p.isLambda
  let i ← withNaryArg 1 <| withBindingBodyUnusedName (pure ⟨·⟩)
  let p ← withNaryArg 1 <| withBindingBody i.getId delab
  if t.isAppOfArity ``Finset.univ 2 then
    if ← getPPOption getPPFunBinderTypes then
      let ty ← withNaryArg 0 delab
      `({$i:ident : $ty | $p})
    else
      `({$i:ident | $p})
  -- check if `t` is of the form `s₀ᶜ`, in which case we display `x ∉ s₀` instead
  else if t.isAppOfArity ``HasCompl.compl 3 then
    let #[_, _, s₀] := t.getAppArgs | failure
    -- if `s₀` is a singleton, we can even use the notation `x ≠ a`
    if s₀.isAppOfArity ``Singleton.singleton 4 then
      let t ← withNaryArg 3 <| withNaryArg 2 <| withNaryArg 3 delab
      `({$i:ident ≠ $t | $p})
    else
      let t ← withNaryArg 3 <| withNaryArg 2 delab
      `({$i:ident ∉ $t | $p})
  else
    let t ← withNaryArg 3 delab
    `({$i:ident ∈ $t | $p})

end Mathlib.Meta

open Finset Function

namespace Fintype

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant5b2274190aca9637c9c7a7b9978acfa9721bb6354f725df13442ab226965eef7.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea06b4b180858caf68d01b6c58ad020ae51f73c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
