# delabMatrixNotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59569ddcef8bb057560d1027d0c04e9cbbe4aa680497225787ddf80867ba7318",
  "kind": "def",
  "lexical_name": "delabMatrixNotation",
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
  "slug": "delabmatrixnotation--24dc2905af910b91cdc92717",
  "source": {
    "blob": "bb39d400755d2f3828e893682856061f8cd2db89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 130,
    "path": "GRWTSK/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24dc2905af910b91cdc92717050cb4f901f0f129a0fe98561a9cb143d748cc7e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59569ddcef8bb057560d1027d0c04e9cbbe4aa680497225787ddf80867ba7318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def delabMatrixNotation : Delab := whenNotPPOption getPPExplicit <| whenPPOption getPPNotation <|
  withOverApp 6 do
    let mkApp3 (.const ``Matrix.of _) (.app (.const ``Fin _) em) (.app (.const ``Fin _) en) _ :=
      (← getExpr).appFn!.appArg! | failure
    let some m ← withNatValue em (pure ∘ some) | failure
    let some n ← withNatValue en (pure ∘ some) | failure
    withAppArg do
      if m = 0 then
        guard <| (← getExpr).isAppOfArity ``vecEmpty 1
        let commas := .replicate n (mkAtom ",")
        `(!![$[,%$commas]*])
      else
        if n = 0 then
          let `(![$[![]%$evecs],*]) ← delab | failure
          `(!![$[;%$evecs]*])
        else
          let `(![$[![$[$melems],*]],*]) ← delab | failure
          `(!![$[$[$melems],*];*])

end Parser

variable (a b : ℕ)

/-- Use `![...]` notation for displaying a `Fin`-indexed matrix, for example:

```
#eval !![1, 2; 3, 4] + !![3, 4; 5, 6]  -- !![4, 6; 8, 10]
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb39d400755d2f3828e893682856061f8cd2db89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
