# laplaceTransform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:473052cf0bbef1372cb5ca13d74cee0ae9dc48fa2be0aa32d436d6b5435d025e",
  "kind": "def",
  "lexical_name": "laplaceTransform",
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
  "slug": "laplacetransform--0a76a31b6e557747307e7462",
  "source": {
    "blob": "5097a000f84401155f4f06bd32e60018848d6b57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 38,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a76a31b6e557747307e746216492a5d706375100b806c6db6ee9d7ff589e9b4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:473052cf0bbef1372cb5ca13d74cee0ae9dc48fa2be0aa32d436d6b5435d025e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def laplaceTransform (f : ℝ → ℝ) (s : ℂ) : ℂ :=
  ∫ t in (.Ioi (0:ℝ)), exp (-s * (t : ℂ)) * (f t : ℂ) ∂volume

/-! ## Helper: finite support of `f ∘ log` -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variantb01c3cc26b98ac754491ed97ed99b27c58138b78f13de2cc2f4fe8fba091e981.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5097a000f84401155f4f06bd32e60018848d6b57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
