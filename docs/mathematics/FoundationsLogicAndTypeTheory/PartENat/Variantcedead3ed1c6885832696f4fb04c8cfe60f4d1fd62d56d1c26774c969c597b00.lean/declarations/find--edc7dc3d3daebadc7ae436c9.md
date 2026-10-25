# find

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a4193b462ae3a0d474b771778111d3db4bac1c198c418d61d4525bc2f4c8c68",
  "kind": "def",
  "lexical_name": "find",
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
  "slug": "find--edc7dc3d3daebadc7ae436c9",
  "source": {
    "blob": "c6130a8b5b1c962dcaf3d83b20eabeba2045a1eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 786,
    "line": 782,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/PartENat/Variantcedead3ed1c6885832696f4fb04c8cfe60f4d1fd62d56d1c26774c969c597b00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edc7dc3d3daebadc7ae436c9eac1dc8dd142e15e65f3bb0446cab9419ca37fd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/PartENat/Variantcedead3ed1c6885832696f4fb04c8cfe60f4d1fd62d56d1c26774c969c597b00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a4193b462ae3a0d474b771778111d3db4bac1c198c418d61d4525bc2f4c8c68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 782–786.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def find : PartENat :=
  ⟨∃ n, P n, Nat.find⟩
#align part_enat.find PartENat.find

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/PartENat/Variantcedead3ed1c6885832696f4fb04c8cfe60f4d1fd62d56d1c26774c969c597b00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/PartENat/Variantcedead3ed1c6885832696f4fb04c8cfe60f4d1fd62d56d1c26774c969c597b00.lean#L782).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6130a8b5b1c962dcaf3d83b20eabeba2045a1eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
