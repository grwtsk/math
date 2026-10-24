# full_model_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:214c10c1-d4e5-1bba-2dd1-499d67ea8758",
  "kind": "theorem",
  "lexical_name": "full_model_integrable",
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
  "slug": "full-model-integrable--e4f8fcd1d22e8d4c73ef0c03",
  "source": {
    "blob": "2f545aabf9b7ffacb1f37e461c3ce9ada8d276a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4f8fcd1d22e8d4c73ef0c032ffee73d53fce6e96b89dd385b7f5f4384ac158e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:214c10c1-d4e5-1bba-2dd1-499d67ea8758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_model_integrable (A k : ℝ) :
    IntegrableOn (fun u => Int.fract u * cubicLogModelDerivative A k u) (Ioi (0 : ℝ)) := by
  simp_rw [full_model_density_eq]
  exact ((((fullPositiveKappaWeight_integrable 1).const_mul _).add
    ((fullPositiveKappaWeight_integrable 2).const_mul _)).add
      ((fullPositiveKappaWeight_integrable 3).const_mul _)).add
        ((fullPositiveKappaWeight_integrable 4).const_mul _) |>.const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant05d56d58e0aaf5bf31b87ddeae2fd105d7da1ddbb142642af4d336d9801d08ab.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f545aabf9b7ffacb1f37e461c3ce9ada8d276a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
