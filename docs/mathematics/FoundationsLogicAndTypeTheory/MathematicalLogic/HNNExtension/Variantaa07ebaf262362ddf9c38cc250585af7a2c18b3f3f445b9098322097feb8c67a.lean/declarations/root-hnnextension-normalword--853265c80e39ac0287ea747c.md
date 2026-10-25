# _root_.HNNExtension.NormalWord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35775311f0d9ffd5dbadb6bfc6e8496867a5d992e037d7aa80c094daa5af4737",
  "kind": "structure",
  "lexical_name": "_root_.HNNExtension.NormalWord",
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
  "slug": "root-hnnextension-normalword--853265c80e39ac0287ea747c",
  "source": {
    "blob": "2a01288bc39d0afd4d2b3230c62eff275de3ce01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:853265c80e39ac0287ea747c45d3ed3f9b01c8fbc725b00926fc7b2355279ddb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35775311f0d9ffd5dbadb6bfc6e8496867a5d992e037d7aa80c094daa5af4737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure _root_.HNNExtension.NormalWord (d : TransversalPair G A B) : Type _
    extends ReducedWord G A B where
  /-- Every element `g : G` in the list is the chosen element of its coset -/
  mem_set : ∀ (u : ℤˣ) (g : G), (u, g) ∈ toList → g ∈ d.set u

variable {d : TransversalPair G A B}

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantaa07ebaf262362ddf9c38cc250585af7a2c18b3f3f445b9098322097feb8c67a.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a01288bc39d0afd4d2b3230c62eff275de3ce01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
