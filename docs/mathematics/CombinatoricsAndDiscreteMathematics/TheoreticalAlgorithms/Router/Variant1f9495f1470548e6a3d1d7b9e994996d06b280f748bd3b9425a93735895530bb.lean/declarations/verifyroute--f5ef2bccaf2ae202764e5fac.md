# verifyRoute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01bc5a7b8c8e5f97d0d0261b84113601e2d1bfb31f81b6e4f023e87f28cb6ee0",
  "kind": "def",
  "lexical_name": "verifyRoute",
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
  "slug": "verifyroute--f5ef2bccaf2ae202764e5fac",
  "source": {
    "blob": "55ca2ef8fab89f1a971b38e554033dc4f915f10b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Router/Variant1f9495f1470548e6a3d1d7b9e994996d06b280f748bd3b9425a93735895530bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5ef2bccaf2ae202764e5facd44846fa8caa0703d47a2db11e6db1693e967a8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Router/Variant1f9495f1470548e6a3d1d7b9e994996d06b280f748bd3b9425a93735895530bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01bc5a7b8c8e5f97d0d0261b84113601e2d1bfb31f81b6e4f023e87f28cb6ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def verifyRoute (dag : Dag) (spec : RouteSpec) : RouteVerification :=
  let edgeMap : Std.HashMap String Edge :=
    dag.E.foldl (init := {}) fun m e => m.insert e.id.uuid e

  let mut composed : List Expr := []

  match spec.path with
  | [] => {
      valid := false,
      hops := 0,
      composed := none,
      message := some "Empty path"
    }
  | _ =>
    let mut curr := spec.src
    let mut ok := true
    for eid in spec.path do
      match edgeMap.find? eid.uuid with
      | none =>
        return {
          valid := false,
          hops := 0,
          composed := none,
          message := some s!"Edge not found: {eid.uuid}"
        }
      | some edge =>
        if edge.kind ≠ .material then
          return {
            valid := false,
            hops := 0,
            composed := none,
            message := some s!"Non-material edge in route: {eid.uuid}"
          }
        if edge.from ≠ curr then
          return {
            valid := false,
            hops := 0,
            composed := none,
            message := some s!"Broken chain at edge: {eid.uuid}"
          }
        -- Accept the proof term
        composed := composed.concat edge.proof
        curr := edge.to

    if curr ≠ spec.dst then
      return {
        valid := false,
        hops := spec.path.length,
        composed := none,
        message := some "Final target does not match route dst"
      }

    return {
      valid := true,
      hops := spec.path.length,
      composed := some (.appN (.const ``And.intro []) composed),
      message := none
    }

end Kernel.Router
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Router/Variant1f9495f1470548e6a3d1d7b9e994996d06b280f748bd3b9425a93735895530bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Router/Variant1f9495f1470548e6a3d1d7b9e994996d06b280f748bd3b9425a93735895530bb.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55ca2ef8fab89f1a971b38e554033dc4f915f10b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
