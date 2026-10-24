# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:495b874e4b2ac48cf1708f4213497452e64b655a5124baa3342a8dc07aff78f4",
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
  "slug": "instance--235db8232435ba77d94aed6d",
  "source": {
    "blob": "b294c29763f539c0dfc7f8b272ed1fcac98ba8f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:235db8232435ba77d94aed6d74beacb7818b6a015c750a299bb86b5080a279ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:495b874e4b2ac48cf1708f4213497452e64b655a5124baa3342a8dc07aff78f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
local instance (N : ℕ) : Fintype (VaughanTypeIIFactorAtom N) :=
  @Subtype.fintype _ (IsVaughanTypeIIFactor N)
    (by intro q; unfold IsVaughanTypeIIFactor; infer_instance) inferInstance

/-- The finite set of nonempty canonical dyadic Type II rectangles.  It is
the image of the literal effective factor atoms, hence cannot contain an
empty or post-selected block. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b294c29763f539c0dfc7f8b272ed1fcac98ba8f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
