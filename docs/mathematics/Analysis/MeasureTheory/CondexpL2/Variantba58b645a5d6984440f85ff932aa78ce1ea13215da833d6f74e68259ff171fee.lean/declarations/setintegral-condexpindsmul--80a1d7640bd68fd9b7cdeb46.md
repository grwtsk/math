# setIntegral_condExpIndSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73301cd7a26574e3650899d58234352f0cedea71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8ea6673-ca25-5ad4-aeea-4e21dc1ba273",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:340634db-c416-b78f-49aa-d02996bbe902",
  "kind": "theorem",
  "lexical_name": "setIntegral_condExpIndSMul",
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
  "slug": "setintegral-condexpindsmul--80a1d7640bd68fd9b7cdeb46",
  "source": {
    "blob": "73301cd7a26574e3650899d58234352f0cedea71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 425,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80a1d7640bd68fd9b7cdeb46eb5eb0f32b57eb112c5a7447d99ac4a9060089dc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL2/Variantba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:340634db-c416-b78f-49aa-d02996bbe902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_condExpIndSMul (hs : MeasurableSet[m] s) (ht : MeasurableSet t)
    (hμs : μ s ≠ ∞) (hμt : μ t ≠ ∞) (x : G') :
    ∫ a in s, (condExpIndSMul hm ht hμt x) a ∂μ = μ.real (t ∩ s) • x :=
  calc
    ∫ a in s, (condExpIndSMul hm ht hμt x) a ∂μ =
        ∫ a in s, (condExpL2 ℝ ℝ hm (indicatorConstLp 2 ht hμt 1) : α → ℝ) a • x ∂μ :=
      setIntegral_congr_ae (hm s hs)
        ((condExpIndSMul_ae_eq_smul hm ht hμt x).mono fun _ hx _ => hx)
    _ = (∫ a in s, (condExpL2 ℝ ℝ hm (indicatorConstLp 2 ht hμt 1) : α → ℝ) a ∂μ) • x :=
      (integral_smul_const _ x)
    _ = μ.real (t ∩ s) • x := by rw [setIntegral_condExpL2_indicator hs ht hμs hμt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL2/Variantba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73301cd7a26574e3650899d58234352f0cedea71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
