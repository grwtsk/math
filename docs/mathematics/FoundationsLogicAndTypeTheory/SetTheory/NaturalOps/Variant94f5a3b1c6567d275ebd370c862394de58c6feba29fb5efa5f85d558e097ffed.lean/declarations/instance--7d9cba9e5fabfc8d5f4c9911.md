# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf82361fa20d368e2bc4302310191bdb6696c06c784a10871c82a41dc97b86ee",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7d9cba9e5fabfc8d5f4c9911",
  "source": {
    "blob": "dfffb893618a15661cbc35a1893a585cb3fe9439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 352,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d9cba9e5fabfc8d5f4c99110851d89a89884026ce801ddce5f54b2665fdd4c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf82361fa20d368e2bc4302310191bdb6696c06c784a10871c82a41dc97b86ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : AddLeftReflectLE NatOrdinal.{u} :=
  ⟨fun a b c h => by
    by_contra! h'
    exact h.not_lt (add_lt_add_left h' a)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant94f5a3b1c6567d275ebd370c862394de58c6feba29fb5efa5f85d558e097ffed.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfffb893618a15661cbc35a1893a585cb3fe9439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
