# unitBumpOverlap_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3aac705-6256-bfec-2c23-b017ab49424b",
  "kind": "theorem",
  "lexical_name": "unitBumpOverlap_integrand_integrable",
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
  "slug": "unitbumpoverlap-integrand-integrable--2593b43154b1736305cfdb79",
  "source": {
    "blob": "836bcf628574cdbf3f783e96f8bc3b0a44053993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantd7fdd3bf3b9002c11bde76f59297395bd67b1682819b5f5806a481bd90348db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2593b43154b1736305cfdb791cf99713ee43a0ea63446b3bf8dae80a282bd9c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantd7fdd3bf3b9002c11bde76f59297395bd67b1682819b5f5806a481bd90348db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3aac705-6256-bfec-2c23-b017ab49424b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitBumpOverlap_integrand_integrable (u : ℝ) :
    Integrable (fun x : ℝ => sourceBump x*sourceBump (x-u)) :=
  (sourceBump_contDiff.continuous.mul
    (sourceBump_contDiff.continuous.comp (continuous_id.sub continuous_const)))
      .integrable_of_hasCompactSupport sourceBump_hasCompactSupport.mul_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantd7fdd3bf3b9002c11bde76f59297395bd67b1682819b5f5806a481bd90348db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ReflectedPositivePrimitiveAttempt02/Variantd7fdd3bf3b9002c11bde76f59297395bd67b1682819b5f5806a481bd90348db4.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836bcf628574cdbf3f783e96f8bc3b0a44053993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
