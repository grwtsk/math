# processPowIdentityVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffa4b34c53b1a3d9d5e596ca5a540ebe41b4419ee1141c1603b9687bf3b2ea4e",
  "kind": "def",
  "lexical_name": "processPowIdentityVars",
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
  "slug": "processpowidentityvars--7ffb11fdfd3edfa821579544",
  "source": {
    "blob": "ae846b6afe574f59a0f263080cd5559c4d206447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ffb11fdfd3edfa821579544f7c1b38cf646ed0e5e6eb3002d7694bb58bca657",
  "verification": {
    "reference": "docs/verification/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffa4b34c53b1a3d9d5e596ca5a540ebe41b4419ee1141c1603b9687bf3b2ea4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def processPowIdentityVars : RingM Unit := do
  let ring ← getCommRing
  let some (powIdentityInst, csInst, p) := ring.powIdentityInst? | return ()
  let startIdx := ring.powIdentityVarCount
  let vars := ring.toRing.vars
  if startIdx >= vars.size then return ()
  for i in [startIdx:vars.size] do
    let x := vars[i]!
    trace_goal[grind.ring] "PowIdentity: pushing x^{p} = x for {x}"
    -- Construct proof: @PowIdentity.pow_eq α csInst p powIdentityInst x
    let proof := mkApp5 (mkConst ``Grind.PowIdentity.pow_eq [ring.u])
      ring.type csInst (mkNatLit p) powIdentityInst x
    pushNewFact proof
  modifyCommRing fun s => { s with powIdentityVarCount := vars.size }

/-- Returns `true` if `e` is a term `a⁻¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae846b6afe574f59a0f263080cd5559c4d206447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
