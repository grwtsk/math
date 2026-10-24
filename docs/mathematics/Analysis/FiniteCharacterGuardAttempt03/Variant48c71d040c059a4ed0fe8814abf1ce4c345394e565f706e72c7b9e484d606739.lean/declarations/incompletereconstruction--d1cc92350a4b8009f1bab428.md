# incompleteReconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32448ad1ea0c4579d78d0aee911dff664fb84afc15215c03241cfdb45eea685a",
  "kind": "def",
  "lexical_name": "incompleteReconstruction",
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
  "slug": "incompletereconstruction--d1cc92350a4b8009f1bab428",
  "source": {
    "blob": "bdbdbe2984f1c89ca7fb1f820af52bead5e15808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 57,
    "path": "GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1cc92350a4b8009f1bab4286ba5b1f2015d2d37b34529e355513fcab22332f1",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32448ad1ea0c4579d78d0aee911dff664fb84afc15215c03241cfdb45eea685a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def incompleteReconstruction (f : G → ℂ) : G → ℂ :=
  ∑ character ∈ Finset.univ.erase (0 : AddChar G ℂ),
    coefficientMap character f • (character : G → ℂ)

/-- The discarded term is exactly the constant/trivial component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdbdbe2984f1c89ca7fb1f820af52bead5e15808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
