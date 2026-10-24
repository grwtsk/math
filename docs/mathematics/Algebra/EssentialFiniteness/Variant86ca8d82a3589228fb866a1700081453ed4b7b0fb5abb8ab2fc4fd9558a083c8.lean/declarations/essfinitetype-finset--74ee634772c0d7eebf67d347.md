# EssFiniteType.finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:298c5a37bf4028bcd2ec6f95c29940b142788451f5ab07d6ea8852de9fb69c7b",
  "kind": "def",
  "lexical_name": "EssFiniteType.finset",
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
  "slug": "essfinitetype-finset--74ee634772c0d7eebf67d347",
  "source": {
    "blob": "a57625a143386f5396971d9e49d1e1d5c5dcc9fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 271,
    "path": "GRWTSK/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74ee634772c0d7eebf67d347b7d537dfcd0fb4df87625d53e745fcaed4ae9e90",
  "verification": {
    "reference": "docs/verification/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:298c5a37bf4028bcd2ec6f95c29940b142788451f5ab07d6ea8852de9fb69c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EssFiniteType.finset (hf : f.EssFiniteType) : Finset S :=
  letI := f.toAlgebra
  haveI : Algebra.EssFiniteType R S := hf
  Algebra.EssFiniteType.finset R S

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a57625a143386f5396971d9e49d1e1d5c5dcc9fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
