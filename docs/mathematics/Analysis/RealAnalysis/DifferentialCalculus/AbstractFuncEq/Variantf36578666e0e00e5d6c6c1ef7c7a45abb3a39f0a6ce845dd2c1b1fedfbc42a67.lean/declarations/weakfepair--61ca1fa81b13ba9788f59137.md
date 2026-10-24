# WeakFEPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e955dba4b034599d403389d97843856bcee6751ce5571265957903f989b1730",
  "kind": "structure",
  "lexical_name": "WeakFEPair",
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
  "slug": "weakfepair--61ca1fa81b13ba9788f59137",
  "source": {
    "blob": "ae226f9708f6749b7e8280ce7b8d4379bed5493f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61ca1fa81b13ba9788f5913709b607e5742bfb1e768a317ee7c3354b26d594fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e955dba4b034599d403389d97843856bcee6751ce5571265957903f989b1730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WeakFEPair where
  /-- The functions whose Mellin transform we study -/
  (f g : ℝ → E)
  /-- Weight (exponent in the functional equation) -/
  (k : ℝ)
  /-- Root number -/
  (ε : ℂ)
  /-- Constant terms at `∞` -/
  (f₀ g₀ : E)
  (hf_int : LocallyIntegrableOn f (Ioi 0))
  (hg_int : LocallyIntegrableOn g (Ioi 0))
  (hk : 0 < k)
  (hε : ε ≠ 0)
  (h_feq : ∀ x ∈ Ioi 0, f (1 / x) = (ε * ↑(x ^ k)) • g x)
  (hf_top (r : ℝ) : (f · - f₀) =O[atTop] (· ^ r))
  (hg_top (r : ℝ) : (g · - g₀) =O[atTop] (· ^ r))

/-- A structure designed to hold the hypotheses for the Mellin-functional-equation argument
(version without constant terms) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae226f9708f6749b7e8280ce7b8d4379bed5493f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
