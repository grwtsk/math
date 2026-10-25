# hasFwdDeps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65f3136194dc98448c8696d88901260c6c0a7b40f34620d0de283f0ba6889830",
  "kind": "def",
  "lexical_name": "hasFwdDeps",
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
  "slug": "hasfwddeps--f5f69c77c133facba2f97a5d",
  "source": {
    "blob": "624618aefa34a63676ff9c93c4e47a3222737715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variantba289115c174887f6df5759985258efc7c151f492994a967ed90fda4f2d66633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5f69c77c133facba2f97a5dec593889d1544560f1d3f7f3f4f0775ab58fe15f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variantba289115c174887f6df5759985258efc7c151f492994a967ed90fda4f2d66633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65f3136194dc98448c8696d88901260c6c0a7b40f34620d0de283f0ba6889830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def hasFwdDeps (decl : Decl .pure) (paramsInfo : Array SpecParamInfo) (j : Nat) : Bool := Id.run do
  let param := decl.params[j]!
  for h : k in (j+1)...decl.params.size do
    if paramsInfo[k]!.causesSpecialization || paramsInfo[k]! matches .fixedInst .. then
      let param' := decl.params[k]
      if param'.type.containsFVar param.fvarId then
        return true
  return false

/--
Compute specialization information for `decls`. We assume that `decls` contains a full SCC of
computationally relevant declarations. Furthermore this function takes:
- `autoSpecialize` which determines whether we apply "automated" specialization to a decl, that is
  whether we automatically specialize for all fixedHO parameters. It receives both the name and
  the array of arguments mentioned in `@[specialize]` if any.
- `alreadySpecialized` which is a mask that says whether a decl is already a specialized declaration
  itself.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variantba289115c174887f6df5759985258efc7c151f492994a967ed90fda4f2d66633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variantba289115c174887f6df5759985258efc7c151f492994a967ed90fda4f2d66633.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624618aefa34a63676ff9c93c4e47a3222737715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
