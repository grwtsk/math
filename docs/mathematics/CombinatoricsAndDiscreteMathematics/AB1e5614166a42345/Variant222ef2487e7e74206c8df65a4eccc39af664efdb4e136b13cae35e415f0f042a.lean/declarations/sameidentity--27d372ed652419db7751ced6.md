# SameIdentity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20a3afa2f9f789d3debd3d497114fe90cbb09032ffcef6197a79e203da3dd7c0",
  "kind": "def",
  "lexical_name": "SameIdentity",
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
  "slug": "sameidentity--27d372ed652419db7751ced6",
  "source": {
    "blob": "65e06c2cc5eb3ce65fb8cf2867f8bca170cb7d1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AB1e5614166a42345/Variant222ef2487e7e74206c8df65a4eccc39af664efdb4e136b13cae35e415f0f042a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27d372ed652419db7751ced6ebd7ff7482c51bbf12b20519a65773657f3c0ef5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AB1e5614166a42345/Variant222ef2487e7e74206c8df65a4eccc39af664efdb4e136b13cae35e415f0f042a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20a3afa2f9f789d3debd3d497114fe90cbb09032ffcef6197a79e203da3dd7c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SameIdentity (left right : Record) : Prop := left.id = right.id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AB1e5614166a42345/Variant222ef2487e7e74206c8df65a4eccc39af664efdb4e136b13cae35e415f0f042a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AB1e5614166a42345/Variant222ef2487e7e74206c8df65a4eccc39af664efdb4e136b13cae35e415f0f042a.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e06c2cc5eb3ce65fb8cf2867f8bca170cb7d1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
