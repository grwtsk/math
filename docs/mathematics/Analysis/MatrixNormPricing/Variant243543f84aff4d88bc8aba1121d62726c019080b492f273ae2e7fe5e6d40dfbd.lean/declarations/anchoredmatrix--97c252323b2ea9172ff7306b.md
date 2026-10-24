# anchoredMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb4a3288acf86c7dd46def910135d1960f295fe04e367d28b2f55a9dfcd3f726",
  "kind": "def",
  "lexical_name": "anchoredMatrix",
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
  "slug": "anchoredmatrix--97c252323b2ea9172ff7306b",
  "source": {
    "blob": "1434b50f0728be24f04a2f0165490cfc03bd72ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97c252323b2ea9172ff7306b22b12ebfe9f80a6a4336d35226c26d506512bc0e",
  "verification": {
    "reference": "docs/verification/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb4a3288acf86c7dd46def910135d1960f295fe04e367d28b2f55a9dfcd3f726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def anchoredMatrix (s : Finset ℕ) (b₀ : ℝ) (b : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) (anchor : ℕ → ℝ) : Matrix (Option ↥s) (Option ↥s) ℝ :=
  fun i j ↦ match i, j with
  | none, none => b₀ ^ 2
  | some n, some m => weightedGram b K n.val m.val
  | none, some m => b₀ * b m.val * anchor m.val
  | some n, none => b n.val * b₀ * anchor n.val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1434b50f0728be24f04a2f0165490cfc03bd72ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
