# prefixMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:318327e6c1cb870d67769f5c301de3c1ae3447f0741fefe2bb9f1cbd3b4add9b",
  "kind": "def",
  "lexical_name": "prefixMap",
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
  "slug": "prefixmap--1baa01f345b6eb301c34e824",
  "source": {
    "blob": "60f7223145e8c11367098e7abbcf3a22c83e663e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1baa01f345b6eb301c34e82465d40eb8a3305e3ee2fe1a43c5d889240217d73f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:318327e6c1cb870d67769f5c301de3c1ae3447f0741fefe2bb9f1cbd3b4add9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prefixMap
    (R : FrozenMetricLinearRelaxation flow Signal)
    (k : Nat) : Signal →ₗ[ℝ] Signal :=
  composeChronological (List.ofFn R.step |>.take k)

/-- The complete map `A_(H-1) ∘ ⋯ ∘ A_0` is structurally linear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant50aef9aaf8a8cc2a0f65f40eb99391dec8ecd98087004af2bcbc07eef9f4c823.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f7223145e8c11367098e7abbcf3a22c83e663e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
