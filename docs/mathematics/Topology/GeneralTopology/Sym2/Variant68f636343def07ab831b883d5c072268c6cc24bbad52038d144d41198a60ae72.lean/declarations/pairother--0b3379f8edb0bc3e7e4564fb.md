# pairOther

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c020abfc5a6db19d902e554b5c32a63802c1bee16184e4819b9c6196b456c42",
  "kind": "def",
  "lexical_name": "pairOther",
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
  "slug": "pairother--0b3379f8edb0bc3e7e4564fb",
  "source": {
    "blob": "bb056b3eb4d9a749861b530e0d72e687c027cec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 683,
    "path": "GRWTSK/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b3379f8edb0bc3e7e4564fbcd2a514eb8599e37626cac5b212e2f9522a835f7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c020abfc5a6db19d902e554b5c32a63802c1bee16184e4819b9c6196b456c42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def pairOther [DecidableEq α] (a : α) (z : α × α) : α :=
  if a = z.1 then z.2 else z.1
-- porting note: remove align for private def

/-- Get the other element of the unordered pair using the decidable equality.
This is the computable version of `Mem.other`.
-/
@[aesop norm unfold (rule_sets [Sym2])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sym2/Variant68f636343def07ab831b883d5c072268c6cc24bbad52038d144d41198a60ae72.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb056b3eb4d9a749861b530e0d72e687c027cec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
