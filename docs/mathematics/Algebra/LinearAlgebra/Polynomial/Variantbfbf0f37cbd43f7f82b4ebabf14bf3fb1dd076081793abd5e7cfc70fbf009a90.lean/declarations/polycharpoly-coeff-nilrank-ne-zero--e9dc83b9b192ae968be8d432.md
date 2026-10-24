# polyCharpoly_coeff_nilRank_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3a95a0f-da9e-f45a-3e83-ac9efc4f2992",
  "kind": "lemma",
  "lexical_name": "polyCharpoly_coeff_nilRank_ne_zero",
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
  "slug": "polycharpoly-coeff-nilrank-ne-zero--e9dc83b9b192ae968be8d432",
  "source": {
    "blob": "9e55fdea81e3b2aecfe8bcf90c2f5c41389eabaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 484,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9dc83b9b192ae968be8d43293cacd25194b6cd5fab5c6088b7affb9b9aa8923",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3a95a0f-da9e-f45a-3e83-ac9efc4f2992`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma polyCharpoly_coeff_nilRank_ne_zero :
    (polyCharpoly φ b).coeff (nilRank φ) ≠ 0 := by
  rw [nilRank_eq_polyCharpoly_natTrailingDegree _ b]
  apply polyCharpoly_coeff_nilRankAux_ne_zero

open Module Module.Free

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variantbfbf0f37cbd43f7f82b4ebabf14bf3fb1dd076081793abd5e7cfc70fbf009a90.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e55fdea81e3b2aecfe8bcf90c2f5c41389eabaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
