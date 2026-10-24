# mulEquivOfCyclicCardEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fbb257c7ffa60e1c08fce6b56e37dcb2de7d2b2850a529f7489a3efe4d112ad",
  "kind": "def",
  "lexical_name": "mulEquivOfCyclicCardEq",
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
  "slug": "mulequivofcycliccardeq--bd039871cde89735d70cb315",
  "source": {
    "blob": "cca7580ea1cb569efd4b423d4326cb4e02e905bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 596,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd039871cde89735d70cb315e254383da57a3a164f1e0f21d39c8811c49d0d14",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fbb257c7ffa60e1c08fce6b56e37dcb2de7d2b2850a529f7489a3efe4d112ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mulEquivOfCyclicCardEq [Group G] [Group G'] [hG : IsCyclic G]
    [hH : IsCyclic G'] (hcard : Nat.card G = Nat.card G') : G ≃* G' := hcard ▸
  zmodCyclicMulEquiv hG |>.symm.trans (zmodCyclicMulEquiv hH)

/-- Two groups of the same prime cardinality are isomorphic. -/
@[to_additive /-- Two additive groups of the same prime cardinality are isomorphic. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca7580ea1cb569efd4b423d4326cb4e02e905bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
