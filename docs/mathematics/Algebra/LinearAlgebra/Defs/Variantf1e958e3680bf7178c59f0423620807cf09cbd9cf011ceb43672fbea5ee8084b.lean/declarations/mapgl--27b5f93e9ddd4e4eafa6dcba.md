# mapGL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:772cbb2b301948c632c17ea38d573f60eff72b865e3f41df0fe631ee6f2fadf6",
  "kind": "def",
  "lexical_name": "mapGL",
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
  "slug": "mapgl--27b5f93e9ddd4e4eafa6dcba",
  "source": {
    "blob": "d4f0685567c7fec1610b995c02f5e67b668c692c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 225,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27b5f93e9ddd4e4eafa6dcba4f37fa84673a696d4d49bc475d0455e5a3c7399c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:772cbb2b301948c632c17ea38d573f60eff72b865e3f41df0fe631ee6f2fadf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapGL : Matrix.SpecialLinearGroup n R →* Matrix.GeneralLinearGroup n S :=
  toGL.comp (map (algebraMap R S))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4f0685567c7fec1610b995c02f5e67b668c692c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
