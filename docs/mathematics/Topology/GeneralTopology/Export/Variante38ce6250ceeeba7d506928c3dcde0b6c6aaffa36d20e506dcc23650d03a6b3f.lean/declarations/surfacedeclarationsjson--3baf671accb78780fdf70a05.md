# surfaceDeclarationsJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6a6d553ea29732f05dab616b4583103b7a31edb9b77da0594089b3020f732d0",
  "kind": "def",
  "lexical_name": "surfaceDeclarationsJson",
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
  "slug": "surfacedeclarationsjson--3baf671accb78780fdf70a05",
  "source": {
    "blob": "16c28f1b9066d275124ace0b42c3db135d4a0f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 591,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3baf671accb78780fdf70a056ef9cbf9acfddf15cf329fe8076cf5b265daf1cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6a6d553ea29732f05dab616b4583103b7a31edb9b77da0594089b3020f732d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def surfaceDeclarationsJson (env : Environment) : String :=
  let declarations :=
    (env.constants.toList.map Prod.snd).filter isSurfaceDeclaration |>.mergeSort declarationLess
  "[" ++ String.intercalate "," (List.map constantInfoJson declarations) ++ "]"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c28f1b9066d275124ace0b42c3db135d4a0f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
