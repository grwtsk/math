# thetaPhiJetDetMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22cd9ff9b774154b35dc61c8bcbc2cea638a2dd4dfb367a0f99e77341c2a28fa",
  "kind": "def",
  "lexical_name": "thetaPhiJetDetMajorant",
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
  "slug": "thetaphijetdetmajorant--7d1c416a02245bc307fa7abf",
  "source": {
    "blob": "60bc4766c8aca5671e64c64dcffc6e0eb147ed1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variantbd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d1c416a02245bc307fa7abf368eae95742bdacebe3908cb7d5684c9f045d997",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variantbd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22cd9ff9b774154b35dc61c8bcbc2cea638a2dd4dfb367a0f99e77341c2a28fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiJetDetMajorant (v : Fin 5 → ℝ) : ℝ :=
  v 0*v 2*v 4+2*v 1*v 2*v 3+v 0*(v 3)^2+v 4*(v 1)^2+(v 2)^3

/-- A finite box controls the determinant perturbation with all cancellations
of the unperturbed determinant retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variantbd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530aPerturbation05/Variantbd3c7d141382cc5d13a275e3e07e62b94f047c0bff6633eb552719e115fc530a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60bc4766c8aca5671e64c64dcffc6e0eb147ed1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
