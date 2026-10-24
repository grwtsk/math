# indexEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca7c4dc45d16b6202ee64c30ceac8821fb21d3e2f0644cd8164ac7e4465912a6",
  "kind": "def",
  "lexical_name": "indexEquiv",
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
  "slug": "indexequiv--b1f4cb5702a2a72e9d4cac97",
  "source": {
    "blob": "4b5b6071d69f513b7b58b43c9b22515fda246004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1f4cb5702a2a72e9d4cac977279e8fa26089e0613c79deacee415d0b6c2e093",
  "verification": {
    "reference": "docs/verification/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca7c4dc45d16b6202ee64c30ceac8821fb21d3e2f0644cd8164ac7e4465912a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def indexEquiv (opposition : OppositionStructure kernel) :
    RhetoricalIndex ≃ RhetoricalIndex where
  toFun index := (index.1, opposition.roleOpposite index.2)
  invFun index := (index.1, opposition.roleOpposite index.2)
  left_inv index := by
    rcases index with ⟨concept, role⟩
    simp [opposition.involutive role]
  right_inv index := by
    rcases index with ⟨concept, role⟩
    simp [opposition.involutive role]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b5b6071d69f513b7b58b43c9b22515fda246004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
