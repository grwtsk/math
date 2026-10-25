# enumOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86c0786cc320c98e6747b3dc01bd79ba4c51de97c92a5af92165ec09e12d4c5e",
  "kind": "def",
  "lexical_name": "enumOrd",
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
  "slug": "enumord--0ad2ceab8641bbe429740cee",
  "source": {
    "blob": "70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2171,
    "line": 2164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ad2ceab8641bbe429740cee6b401ba4aa890d84e118e2ba6df72784e0667bd2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86c0786cc320c98e6747b3dc01bd79ba4c51de97c92a5af92165ec09e12d4c5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2164–2171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def enumOrd (S : Set Ordinal.{u}) : Ordinal → Ordinal :=
  lt_wf.fix fun o f => sInf (S ∩ Set.Ici (blsub.{u, u} o f))
#align ordinal.enum_ord Ordinal.enumOrd

variable {S : Set Ordinal.{u}}

/-- The equation that characterizes `enumOrd` definitionally. This isn't the nicest expression to
    work with, so consider using `enumOrd_def` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant849d26ca3732e9c901a1d73c81fa0e8cb6d4bd4c2dfa8aaf6127f320e1cee4fa.lean#L2164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e2b88d5aeaa83c05f31ae927b54e85bb8a5a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
