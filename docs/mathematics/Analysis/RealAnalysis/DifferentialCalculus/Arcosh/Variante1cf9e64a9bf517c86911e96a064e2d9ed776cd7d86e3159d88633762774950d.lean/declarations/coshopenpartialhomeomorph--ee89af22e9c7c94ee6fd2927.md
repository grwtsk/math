# coshOpenPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80f2e31008217d889c8cadd69766319a4476d20cf0cfdf2226d3ac706c830cc3",
  "kind": "def",
  "lexical_name": "coshOpenPartialHomeomorph",
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
  "slug": "coshopenpartialhomeomorph--ee89af22e9c7c94ee6fd2927",
  "source": {
    "blob": "cedf463bb399bb1956d0d9172903eeefd99d600b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee89af22e9c7c94ee6fd2927d3f83fb0226c8681b0ca5aa0e4479ee34be361c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80f2e31008217d889c8cadd69766319a4476d20cf0cfdf2226d3ac706c830cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coshOpenPartialHomeomorph : OpenPartialHomeomorph ℝ ℝ where
  toFun := cosh
  invFun := arcosh
  source := Ioi 0
  target := Ioi 1
  map_source' _ hr := one_lt_cosh.mpr (ne_of_lt hr).symm
  map_target' _ hr := arcosh_pos hr
  left_inv' _ hr := arcosh_cosh (le_of_lt hr)
  right_inv' _ hr := cosh_arcosh (le_of_lt hr)
  open_source := isOpen_Ioi
  open_target := isOpen_Ioi
  continuousOn_toFun := by fun_prop
  continuousOn_invFun := continuousOn_arcosh.mono Ioi_subset_Ici_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variante1cf9e64a9bf517c86911e96a064e2d9ed776cd7d86e3159d88633762774950d.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cedf463bb399bb1956d0d9172903eeefd99d600b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
