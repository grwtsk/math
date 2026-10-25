# toDeclaration!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce44953094662f9373a6e0469969289170a2900b9af148ee32960520d6afce48",
  "kind": "def",
  "lexical_name": "toDeclaration!",
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
  "slug": "todeclaration--09c8efc3da8af1a9a1ae3ea2",
  "source": {
    "blob": "d9b846f3b675413135d44a3b549fd1463d5e0368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09c8efc3da8af1a9a1ae3ea2a002c19626d57d1cbb73d30af1565e3515d86ae9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce44953094662f9373a6e0469969289170a2900b9af148ee32960520d6afce48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toDeclaration! : ConstantInfo → Declaration
  | defnInfo   info => Declaration.defnDecl info
  | thmInfo    info => Declaration.thmDecl     info
  | axiomInfo  info => Declaration.axiomDecl   info
  | opaqueInfo info => Declaration.opaqueDecl  info
  | quotInfo   _ => panic! "toDeclaration for quotInfo not implemented"
  | inductInfo _ => panic! "toDeclaration for inductInfo not implemented"
  | ctorInfo   _ => panic! "toDeclaration for ctorInfo not implemented"
  | recInfo    _ => panic! "toDeclaration for recInfo not implemented"

end ConstantInfo

open Meta

/-- Same as `mkConst`, but with fresh level metavariables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante8ae588394ae67bc187204f0e7a9e7a89f333ace150096d65e5badc1b9702486.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9b846f3b675413135d44a3b549fd1463d5e0368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
