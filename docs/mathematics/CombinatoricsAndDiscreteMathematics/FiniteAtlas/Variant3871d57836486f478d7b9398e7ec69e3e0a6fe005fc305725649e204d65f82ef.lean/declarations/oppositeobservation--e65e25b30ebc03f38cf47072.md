# oppositeObservation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f92fddd5cec8f4964401160cbca01e2c84ede4a5d8ba0a7930d7769c42877926",
  "kind": "def",
  "lexical_name": "oppositeObservation",
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
  "slug": "oppositeobservation--e65e25b30ebc03f38cf47072",
  "source": {
    "blob": "8e754023bd3b4a067546c8d028af858624a318b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 366,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant3871d57836486f478d7b9398e7ec69e3e0a6fe005fc305725649e204d65f82ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e65e25b30ebc03f38cf47072da9ecf67f1d6e1f86fc853cafc2d0a677811a038",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant3871d57836486f478d7b9398e7ec69e3e0a6fe005fc305725649e204d65f82ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f92fddd5cec8f4964401160cbca01e2c84ede4a5d8ba0a7930d7769c42877926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oppositeObservation : Obstruction (Transport.identity observedObject)
    allowed (false, ⟨false, false⟩) where
  index := ()
  differs := by
    change true ≠ false
    decide

/-- A typed effect label; no runtime action is implemented by this datatype. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant3871d57836486f478d7b9398e7ec69e3e0a6fe005fc305725649e204d65f82ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant3871d57836486f478d7b9398e7ec69e3e0a6fe005fc305725649e204d65f82ef.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e754023bd3b4a067546c8d028af858624a318b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
