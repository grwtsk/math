# proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1d2aa1ae438e9efb78d96c3112f617a90203bd8e93a578faf27273bea356780",
  "kind": "def",
  "lexical_name": "proj",
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
  "slug": "proj--624fda67d077fda3afcf1510",
  "source": {
    "blob": "10c017e1753a2f1d0747299430ad5e5fd3e6b5a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 168,
    "path": "GRWTSK/Topology/AlgebraicTopology/Product/Variant36b34c63a3fe407620f6c75b11cb105d7c91d3b9dd7b48893e7b1aedd96cd007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:624fda67d077fda3afcf1510669325f024316577f13ad77575a9dcbc9f0eff0d",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Product/Variant36b34c63a3fe407620f6c75b11cb105d7c91d3b9dd7b48893e7b1aedd96cd007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1d2aa1ae438e9efb78d96c3112f617a90203bd8e93a578faf27273bea356780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proj (i : ι) (p : Path.Homotopic.Quotient as bs) : Path.Homotopic.Quotient (as i) (bs i) :=
  p.mapFn ⟨_, continuous_apply i⟩
#align path.homotopic.proj Path.Homotopic.proj

/-- Lemmas showing projection is the inverse of pi. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Product/Variant36b34c63a3fe407620f6c75b11cb105d7c91d3b9dd7b48893e7b1aedd96cd007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Product/Variant36b34c63a3fe407620f6c75b11cb105d7c91d3b9dd7b48893e7b1aedd96cd007.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c017e1753a2f1d0747299430ad5e5fd3e6b5a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
