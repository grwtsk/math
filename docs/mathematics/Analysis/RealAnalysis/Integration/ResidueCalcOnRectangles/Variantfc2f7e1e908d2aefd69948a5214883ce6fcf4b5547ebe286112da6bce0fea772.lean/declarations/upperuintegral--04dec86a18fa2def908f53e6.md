# UpperUIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d069dbe5ad9acc45c530b54eb4e13f0aefbbd1582b37033efe433ea91461532",
  "kind": "def",
  "lexical_name": "UpperUIntegral",
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
  "slug": "upperuintegral--04dec86a18fa2def908f53e6",
  "source": {
    "blob": "377b24f1b641c133d77964e6af5698c101bc8458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04dec86a18fa2def908f53e694616fdd70234a1b468cb7226921cdb1f096f6f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d069dbe5ad9acc45c530b54eb4e13f0aefbbd1582b37033efe433ea91461532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def UpperUIntegral (f : ℂ → E) (σ σ' T : ℝ) : E :=
    HIntegral f σ σ' T +
    I • (∫ y : ℝ in Ici T, f (σ' + y * I)) -
    I • (∫ y : ℝ in Ici T, f (σ + y * I))

/- A LowerUIntegral is the integral of a function over a |-| shape. -/
@[blueprint
  (title := "LowerUIntegral")
  (statement := /--
  A LowerUIntegral of a function $f$ comes from
  $\sigma-i\infty$ up to $\sigma-iT$, over to
  $\sigma'-iT$, and back down to $\sigma'-i\infty$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377b24f1b641c133d77964e6af5698c101bc8458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
