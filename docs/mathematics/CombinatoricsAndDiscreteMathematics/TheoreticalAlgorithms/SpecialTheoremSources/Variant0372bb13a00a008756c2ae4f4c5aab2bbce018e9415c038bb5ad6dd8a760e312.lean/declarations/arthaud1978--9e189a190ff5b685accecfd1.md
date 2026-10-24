# arthaud1978

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35a883acd7ab1dfa406da2fb4f2341bfd34a1cb14c3a52241993a6e8e98e1520",
  "kind": "def",
  "lexical_name": "arthaud1978",
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
  "slug": "arthaud1978--9e189a190ff5b685accecfd1",
  "source": {
    "blob": "1e002a6d70a2f40f0b9bd23938e913ea2491a56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant0372bb13a00a008756c2ae4f4c5aab2bbce018e9415c038bb5ad6dd8a760e312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e189a190ff5b685accecfd17853d0db24bf43cba11ca53e1974f4f72124a280",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant0372bb13a00a008756c2ae4f4c5aab2bbce018e9415c038bb5ad6dd8a760e312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35a883acd7ab1dfa406da2fb4f2341bfd34a1cb14c3a52241993a6e8e98e1520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def arthaud1978 : ArithmeticTheoremSource := {
  sourceId := "arthaud_1978"
  sourceKind := ArithmeticSourceKind.bsdSpecialCase
  theoremLabel := "Arthaud BSD-related theorem surface"
  statementSummary := "Special BSD-related arithmetic theorem surface retained as a bridge target"
  dependencyChain := ["elliptic curve surface", "BSD special-case hypotheses"]
  authorityStatus := SourceAuthorityStatus.externalTheoremNotImported
  residueAtoms := [
    "bsd.special_case.arthaud",
    "bsd.rank_bridge.special_case_surface",
    "arthaud.proof_import_obligation"
  ]
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant0372bb13a00a008756c2ae4f4c5aab2bbce018e9415c038bb5ad6dd8a760e312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpecialTheoremSources/Variant0372bb13a00a008756c2ae4f4c5aab2bbce018e9415c038bb5ad6dd8a760e312.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e002a6d70a2f40f0b9bd23938e913ea2491a56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
