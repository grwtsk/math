# bumpCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:901c69717bccfdbd03f9e27182d2cae5c035cf7cabda64976555ad81fcb91814",
  "kind": "def",
  "lexical_name": "bumpCorrelation",
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
  "slug": "bumpcorrelation--feb7f93686750331f9b809a5",
  "source": {
    "blob": "9a336f0943e374fa10096a034dda8e097018ee78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 14,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2beSeamAlgebraScrat/Variante97098ab03fe45d843dc5cf3c67eff9f66cefeba48d98c5ca8043f9a49156ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:feb7f93686750331f9b809a5787f7685593a05a48f2d3c80f7102322331e7714",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2beSeamAlgebraScrat/Variante97098ab03fe45d843dc5cf3c67eff9f66cefeba48d98c5ca8043f9a49156ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:901c69717bccfdbd03f9e27182d2cae5c035cf7cabda64976555ad81fcb91814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bumpCorrelation (v : ℝ) : ℝ :=
  (2 - v)^9 * (7 * v^8 + 126 * v^7 + 988 * v^6 + 4344 * v^5 + 11376 * v^4 + 17376 * v^3 + 15808 *
    v^2 + 8064 * v + 1792) / 1531530

/-- The order-1 polynomial in the unit displacement variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2beSeamAlgebraScrat/Variante97098ab03fe45d843dc5cf3c67eff9f66cefeba48d98c5ca8043f9a49156ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2beSeamAlgebraScrat/Variante97098ab03fe45d843dc5cf3c67eff9f66cefeba48d98c5ca8043f9a49156ce8.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a336f0943e374fa10096a034dda8e097018ee78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
