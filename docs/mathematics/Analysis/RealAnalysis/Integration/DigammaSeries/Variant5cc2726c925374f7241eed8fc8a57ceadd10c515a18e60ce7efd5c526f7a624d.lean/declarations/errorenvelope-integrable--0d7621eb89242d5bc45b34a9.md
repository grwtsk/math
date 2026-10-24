# errorEnvelope_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b4d3c58-79c2-fdd7-e13c-16493f2ad86e",
  "kind": "theorem",
  "lexical_name": "errorEnvelope_integrable",
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
  "slug": "errorenvelope-integrable--0d7621eb89242d5bc45b34a9",
  "source": {
    "blob": "a137138042801b801618e03a55b5b53cdd321ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d7621eb89242d5bc45b34a93ec7cb1d68b12eca3edd12b006e1d7392b19da85",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b4d3c58-79c2-fdd7-e13c-16493f2ad86e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem errorEnvelope_integrable {a b : ℝ} (ha : 0 < a) (hb : 0 < b) (n : ℕ) :
    IntegrableOn (errorEnvelope n a b) (Ioi 0) := by
  apply ((Real.GammaIntegral_convergent ha).add (Real.GammaIntegral_convergent hb)).mono'
  · have hm : Measurable (errorEnvelope n a b) := by
      unfold errorEnvelope
      exact ((by fun_prop : Measurable (fun x : ℝ ↦ Real.exp (-x))).sub
        (eulerKernel_measurable n)).mul (by fun_prop)
    exact hm.aestronglyMeasurable
  · apply (ae_restrict_iff' measurableSet_Ioi).mpr
    filter_upwards with x hx
    exact errorEnvelope_bound n a b hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a137138042801b801618e03a55b5b53cdd321ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
