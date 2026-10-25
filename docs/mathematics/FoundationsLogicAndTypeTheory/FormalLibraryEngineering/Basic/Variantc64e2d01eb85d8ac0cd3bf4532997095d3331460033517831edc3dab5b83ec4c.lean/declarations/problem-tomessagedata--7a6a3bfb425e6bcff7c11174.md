# Problem.toMessageData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e84f4e11cfdaf5d2d7771e1a8e0e07114d5d1d182a8f376bb8baccb9b30bb2dd",
  "kind": "def",
  "lexical_name": "Problem.toMessageData",
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
  "slug": "problem-tomessagedata--7a6a3bfb425e6bcff7c11174",
  "source": {
    "blob": "29fc50d4df1af65773e28e25066b0f15fe8dd246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a6a3bfb425e6bcff7c111743ec2777355e4a242e3f74a333c784d46656418a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e84f4e11cfdaf5d2d7771e1a8e0e07114d5d1d182a8f376bb8baccb9b30bb2dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Problem.toMessageData (p : Problem) : MetaM MessageData :=
  withGoalOf p do
    let alts ← p.alts.mapM Alt.toMessageData
    let vars ← p.vars.mapM fun x => do let xType ← inferType x; pure m!"{x}:({xType})"
    return m!"remaining variables: {vars}\nalternatives:{indentD (MessageData.joinSep alts Format.line)}\nexamples:{examplesToMessageData p.examples}\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc64e2d01eb85d8ac0cd3bf4532997095d3331460033517831edc3dab5b83ec4c.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29fc50d4df1af65773e28e25066b0f15fe8dd246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
