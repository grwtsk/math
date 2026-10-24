# instNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c8fffc2a7289194086059942e00be296665bc3b3e1d543e41ff6671b83ec2eb",
  "kind": "instance",
  "lexical_name": "instNeg",
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
  "slug": "instneg--82e3c89d020b5bea5bf73ef1",
  "source": {
    "blob": "af93db03b9b9c1ee91bbc280fbc5ee63b70fc904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82e3c89d020b5bea5bf73ef16f716f143c7db6da9d992b27002d769d348a543e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c8fffc2a7289194086059942e00be296665bc3b3e1d543e41ff6671b83ec2eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNeg [AddCommGroup α] : Neg (WithTop α) where
  neg := Option.map fun a : α => -a

/-- If `α` has subtraction, we can extend the subtraction to `WithTop α`, by
setting `x - ⊤ = ⊤` and `⊤ - x = ⊤`. This definition is only registered as an instance on linearly
ordered additive commutative groups, to avoid conflicting with the instance `WithTop.instSub` on
types with a bottom element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/AddGroupWithTop/Variante719e38396271d3a265976ea5d2b7d62503292b641176a8d9dc1f72b661c0303.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af93db03b9b9c1ee91bbc280fbc5ee63b70fc904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
