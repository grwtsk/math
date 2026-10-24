# smul_one_eq_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e86e826d-0f14-2918-7fcb-beb68693c1ee",
  "kind": "lemma",
  "lexical_name": "smul_one_eq_cast",
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
  "slug": "smul-one-eq-cast--39d7d29ae5c432a182076fe8",
  "source": {
    "blob": "08afcf9a9fb0db39e66fa6f992582edcdfa249b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 191,
    "path": "GRWTSK/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39d7d29ae5c432a182076fe86eda746e73bc26a8d82c3d8eb70941668609f3e9",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e86e826d-0f14-2918-7fcb-beb68693c1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma smul_one_eq_cast (q : ℚ≥0) : q • (1 : K) = q := by rw [NNRat.smul_def, mul_one]

end NNRat

namespace Rat
variable [DivisionRing K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant8fc4e2e1a3464f05fa92bc4f6d31daece2f70a508f1094e5fda3c21957dac151.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08afcf9a9fb0db39e66fa6f992582edcdfa249b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
