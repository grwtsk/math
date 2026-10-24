# ofScott_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b631c342-2a1f-7e0d-e788-786085bcfb4c",
  "kind": "lemma",
  "lexical_name": "ofScott_inj",
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
  "slug": "ofscott-inj--4b15edd398f06cb37a2cf1f5",
  "source": {
    "blob": "f8db7f5e2b621ae27669acbf50fa85b7473b59e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 355,
    "path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b15edd398f06cb37a2cf1f53d61e8ee2b6207c1a3b640f3da4e8a5ac87d941e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b631c342-2a1f-7e0d-e788-786085bcfb4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofScott_inj {a b : WithScott α} : ofScott a = ofScott b ↔ a = b := Iff.rfl
/-- A recursor for `WithScott`. Use as `induction x`. -/
@[elab_as_elim, cases_eliminator, induction_eliminator]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScottTopology/Variant3fe8242ba5c1be77237e99bea76071eb9449f5c34bfc57775bf58ef9fe386457.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8db7f5e2b621ae27669acbf50fa85b7473b59e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
