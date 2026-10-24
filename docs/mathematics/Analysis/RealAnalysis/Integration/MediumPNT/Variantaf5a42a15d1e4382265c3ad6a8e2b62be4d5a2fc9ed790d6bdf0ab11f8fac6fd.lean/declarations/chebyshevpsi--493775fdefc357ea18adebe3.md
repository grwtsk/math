# ChebyshevPsi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4d739fd8b38def44ba6a2d3ec0db966951d32cc114bbf787c057dff2ee5d3d8",
  "kind": "abbrev",
  "lexical_name": "ChebyshevPsi",
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
  "slug": "chebyshevpsi--493775fdefc357ea18adebe3",
  "source": {
    "blob": "604b95747e0aa01200c88c373c411d36cd0cb748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:493775fdefc357ea18adebe34acb3f19ff5388429c70383063b49fa09925b70e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4d739fd8b38def44ba6a2d3ec0db966951d32cc114bbf787c057dff2ee5d3d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev ChebyshevPsi (x : ℝ) : ℝ :=
  Chebyshev.psi x

blueprint_comment /--
It has already been established that zeta doesn't vanish on the 1 line, and has a pole at $s=1$
of order 1.
We also have the following.
-/

@[blueprint "LogDerivativeDirichlet"
  (title := "LogDerivativeDirichlet")
  (statement := /--
  We have that, for $\Re(s)>1$,
  $$-\frac{\zeta'(s)}{\zeta(s)} = \sum_{n=1}^\infty \frac{\Lambda(n)}{n^s}. $$-/)
  (proof := /-- Already in Mathlib. -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantaf5a42a15d1e4382265c3ad6a8e2b62be4d5a2fc9ed790d6bdf0ab11f8fac6fd.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `604b95747e0aa01200c88c373c411d36cd0cb748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
