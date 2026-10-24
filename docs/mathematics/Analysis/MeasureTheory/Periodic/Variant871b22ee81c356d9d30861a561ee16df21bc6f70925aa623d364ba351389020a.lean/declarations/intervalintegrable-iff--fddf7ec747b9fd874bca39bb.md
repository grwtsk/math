# intervalIntegrable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce5c80c5-3a1f-46b1-1bfe-0d92574ccbfc",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable_iff",
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
  "slug": "intervalintegrable-iff--fddf7ec747b9fd874bca39bb",
  "source": {
    "blob": "fe18168521a13fd0cab569f0cf1212a594b1bf14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 328,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variant871b22ee81c356d9d30861a561ee16df21bc6f70925aa623d364ba351389020a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fddf7ec747b9fd874bca39bb027653da924893e05b5fae9f5852fd9c192a64eb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Variant871b22ee81c356d9d30861a561ee16df21bc6f70925aa623d364ba351389020a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce5c80c5-3a1f-46b1-1bfe-0d92574ccbfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_iff {t₁ t₂ : ℝ} (hf : Periodic f T) :
    IntervalIntegrable f volume t₁ (t₁ + T) ↔ IntervalIntegrable f volume t₂ (t₂ + T) := by
  wlog hT : T ≠ 0
  · simp_all
  exact ⟨(hf.intervalIntegrable hT · t₂ (t₂ + T)), (hf.intervalIntegrable hT · t₁ (t₁ + T))⟩

/--
Special case of `Function.Periodic.intervalIntegrable`: A periodic function is interval integrable
over every interval if it is interval integrable over the period starting from zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Variant871b22ee81c356d9d30861a561ee16df21bc6f70925aa623d364ba351389020a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Variant871b22ee81c356d9d30861a561ee16df21bc6f70925aa623d364ba351389020a.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe18168521a13fd0cab569f0cf1212a594b1bf14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
