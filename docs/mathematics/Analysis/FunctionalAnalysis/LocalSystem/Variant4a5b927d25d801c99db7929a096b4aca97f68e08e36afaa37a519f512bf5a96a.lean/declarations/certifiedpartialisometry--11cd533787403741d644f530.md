# CertifiedPartialIsometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:032daba4b5ad8cf5593406935b6c825bdac8fa7988ae8f6ed804cf9f2c58034f",
  "kind": "structure",
  "lexical_name": "CertifiedPartialIsometry",
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
  "slug": "certifiedpartialisometry--11cd533787403741d644f530",
  "source": {
    "blob": "c782c5c9df42a46edfcc23d272ec9313fb26b5e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 35,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11cd533787403741d644f530eaca89ba227fd4d2631731017ca332fe960a14dc",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:032daba4b5ad8cf5593406935b6c825bdac8fa7988ae8f6ed804cf9f2c58034f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedPartialIsometry
    (FiberIndex : Type u) [Fintype FiberIndex] [DecidableEq FiberIndex] where
  operator : FiniteOperator FiberIndex FiberIndex
  sourceProjection : FiniteOperator FiberIndex FiberIndex
  targetProjection : FiniteOperator FiberIndex FiberIndex
  source_selfAdjoint : sourceProjection.IsHermitian
  target_selfAdjoint : targetProjection.IsHermitian
  source_idempotent : sourceProjection * sourceProjection = sourceProjection
  target_idempotent : targetProjection * targetProjection = targetProjection
  initialProjection : operator.conjTranspose * operator = sourceProjection
  finalProjection : operator * operator.conjTranspose = targetProjection

/-- Uniform finite local coefficients over one closed active terrain.  Uniform
coordinates are a runtime-friendly presentation of the cellwise finite
fibers; support projections select the actual source and target fibers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LocalSystem/Variant4a5b927d25d801c99db7929a096b4aca97f68e08e36afaa37a519f512bf5a96a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c782c5c9df42a46edfcc23d272ec9313fb26b5e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
