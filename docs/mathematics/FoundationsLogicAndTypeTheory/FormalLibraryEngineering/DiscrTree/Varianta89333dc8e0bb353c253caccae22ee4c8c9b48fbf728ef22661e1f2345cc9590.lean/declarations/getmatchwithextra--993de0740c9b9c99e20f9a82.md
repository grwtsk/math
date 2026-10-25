# getMatchWithExtra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:272848cdb607ee306b53c2df45791a56e84683089b2b00b4922bf25c0d9e997a",
  "kind": "def",
  "lexical_name": "getMatchWithExtra",
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
  "slug": "getmatchwithextra--993de0740c9b9c99e20f9a82",
  "source": {
    "blob": "b1f6368876af57c5489a489bebf7af79bfd1ba7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:993de0740c9b9c99e20f9a82ae2f093128f7fff5c8990f0aec8b98df58bd7d6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:272848cdb607ee306b53c2df45791a56e84683089b2b00b4922bf25c0d9e997a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def getMatchWithExtra (d : DiscrTree α) (e : Expr) : Array (α × Nat) :=
  let e := etaReduce e
  let result := getMatch d e
  let result := result.map (·, 0)
  if !e.isApp then
    result
  else if !mayMatchPrefix (getKey e) then
    result
  else
    go e.appFn! 1 result
where
  mayMatchPrefix (k : Key) : Bool :=
    let cont (k : Key) : Bool :=
      if d.root.find? k |>.isSome then
        true
      else
        mayMatchPrefix k
    match k with
    | .const f (n+1)  => cont (.const f n)
    | .fvar f (n+1)   => cont (.fvar f n)
    | _               => false

  go (e : Expr) (numExtra : Nat) (result : Array (α × Nat)) : Array (α × Nat) :=
    let result := result ++ (getMatch d e).map (., numExtra)
    if e.isApp then
      go e.appFn! (numExtra + 1) result
    else
      result

end Lean.Meta.Sym
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1f6368876af57c5489a489bebf7af79bfd1ba7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
