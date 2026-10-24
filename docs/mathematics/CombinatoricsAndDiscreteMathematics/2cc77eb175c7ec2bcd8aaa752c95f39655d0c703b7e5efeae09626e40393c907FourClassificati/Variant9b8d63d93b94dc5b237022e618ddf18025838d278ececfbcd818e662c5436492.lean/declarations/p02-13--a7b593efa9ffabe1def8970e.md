# p02_13

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ee281ea9899c9d4e4332c6ad35730faf3ef4c4aa3c794cc23bea8e0693a750b",
  "kind": "def",
  "lexical_name": "p02_13",
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
  "slug": "p02-13--a7b593efa9ffabe1def8970e",
  "source": {
    "blob": "0b408abfe85f09d43532004e8b8c290322a70925",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/2cc77eb175c7ec2bcd8aaa752c95f39655d0c703b7e5efeae09626e40393c907FourClassificati/Variant9b8d63d93b94dc5b237022e618ddf18025838d278ececfbcd818e662c5436492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7b593efa9ffabe1def8970e79d6982274944c2e7d220bd56727fc8a16e81788",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/2cc77eb175c7ec2bcd8aaa752c95f39655d0c703b7e5efeae09626e40393c907FourClassificati/Variant9b8d63d93b94dc5b237022e618ddf18025838d278ececfbcd818e662c5436492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ee281ea9899c9d4e4332c6ad35730faf3ef4c4aa3c794cc23bea8e0693a750b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def p02_13 : DirectionPartition 4 :=
  partition4OfBlocks
    {{(0 : Fin 4), (2 : Fin 4)}, {(1 : Fin 4), (3 : Fin 4)}}
    (by intro a; fin_cases a <;> simp [ExistsUnique])
    (by decide)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/2cc77eb175c7ec2bcd8aaa752c95f39655d0c703b7e5efeae09626e40393c907FourClassificati/Variant9b8d63d93b94dc5b237022e618ddf18025838d278ececfbcd818e662c5436492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/2cc77eb175c7ec2bcd8aaa752c95f39655d0c703b7e5efeae09626e40393c907FourClassificati/Variant9b8d63d93b94dc5b237022e618ddf18025838d278ececfbcd818e662c5436492.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b408abfe85f09d43532004e8b8c290322a70925` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
