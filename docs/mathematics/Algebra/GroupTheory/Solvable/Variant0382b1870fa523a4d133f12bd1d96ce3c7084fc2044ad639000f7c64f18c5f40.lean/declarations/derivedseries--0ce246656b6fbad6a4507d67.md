# derivedSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f12843b90ef2bd6370c1e09e2a70a7f6283d1360bd8e86a722090ec474611b6",
  "kind": "def",
  "lexical_name": "derivedSeries",
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
  "slug": "derivedseries--0ce246656b6fbad6a4507d67",
  "source": {
    "blob": "fa4613f2bafdf0dc87d60acbb53ef6f836635021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 39,
    "path": "GRWTSK/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ce246656b6fbad6a4507d6770bcdfbb2ca6350b1f61e92a783e03f4ca1e7b35",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f12843b90ef2bd6370c1e09e2a70a7f6283d1360bd8e86a722090ec474611b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivedSeries : ℕ → Subgroup G
  | 0 => ⊤
  | n + 1 => ⁅derivedSeries n, derivedSeries n⁆
#align derived_series derivedSeries

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Solvable/Variant0382b1870fa523a4d133f12bd1d96ce3c7084fc2044ad639000f7c64f18c5f40.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4613f2bafdf0dc87d60acbb53ef6f836635021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
