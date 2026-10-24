# tail_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:213a2057-dbc0-12d3-6b0c-6a6aa76179cb",
  "kind": "lemma",
  "lexical_name": "tail_add",
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
  "slug": "tail-add--1107bbe74c31ba7393825eed",
  "source": {
    "blob": "c462454f9d843ca84bffc8fefce030ec1db690b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1107bbe74c31ba7393825eed9ecbbf07f2387907a5e05e763a2fc3eaba845835",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:213a2057-dbc0-12d3-6b0c-6a6aa76179cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma tail_add (a b : Fin n.succ → α) : vecTail (a + b) = vecTail a + vecTail b := rfl

end Add

section Sub
variable [Sub α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Tuple/Variant7c1bcbeeca1b6fa267991307b98d161e4a8f5d0a4f12700b06d18d04b96311d0.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c462454f9d843ca84bffc8fefce030ec1db690b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
