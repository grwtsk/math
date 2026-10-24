# perturbedFixedPointDistanceBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b1e5b54-26a9-2b37-d9b2-f0c85868f91a",
  "kind": "theorem",
  "lexical_name": "perturbedFixedPointDistanceBound",
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
  "slug": "perturbedfixedpointdistancebound--6a08214d65ced80a9c3d14a3",
  "source": {
    "blob": "aa9148c141d434dc1100b438153d27ee5e35340e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 186,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a08214d65ced80a9c3d14a3d4e798bf7bc7b346420d987e46d1ac5b19cc9d6f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b1e5b54-26a9-2b37-d9b2-f0c85868f91a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perturbedFixedPointDistanceBound
    (architecture : CertifiedStableArchitecture)
    (index : architecture.fixedFamily.Point)
    (candidate :
      Operational.VersionedOperator
        (Concept.BanachCarrier architecture.banachModel))
    (perturbation :
      Operational.PointwiseOperatorPerturbationOn
        architecture.operator candidate
        (architecture.contraction index).region)
    (candidatePoint : Operational.CertifiedFixedPoint candidate)
    (candidate_mem :
      (candidatePoint.point :
        Concept.BanachCarrier architecture.banachModel) ∈
          (architecture.contraction index).region) :
    dist
        ((architecture.fixedFamily.point index).point :
          Concept.BanachCarrier architecture.banachModel)
        (candidatePoint.point :
          Concept.BanachCarrier architecture.banachModel) ≤
      perturbation.magnitude.value /
        (1 -
          ((architecture.contraction index).factor : ℝ)) :=
  Operational.fixedPoint_displacement_le
    (architecture.contraction index)
    perturbation
    (architecture.fixedFamily.point index)
    candidatePoint
    (architecture.fixedPoint_mem_contraction_region index)
    candidate_mem

/-- Compact end-to-end statement exported by the bounded core. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9148c141d434dc1100b438153d27ee5e35340e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
