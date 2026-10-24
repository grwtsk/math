# AddChar.tendsto_eval_one_sub_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:687df20b-7600-721c-e458-787726fbc5dc",
  "kind": "lemma",
  "lexical_name": "AddChar.tendsto_eval_one_sub_pow",
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
  "slug": "addchar-tendsto-eval-one-sub-pow--3e1daf7533a73f009b9b8500",
  "source": {
    "blob": "eeb2afe31832f0fb702180fc19b9c8b34da0741f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e1daf7533a73f009b9b8500306829876282de9ed4f581a949fdaf3cf77d212d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:687df20b-7600-721c-e458-787726fbc5dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AddChar.tendsto_eval_one_sub_pow {κ : AddChar ℤ_[p] R} (hκ : Continuous κ) :
    Tendsto (fun n ↦ (κ 1 - 1) ^ n) atTop (𝓝 0) := by
  refine (PadicInt.fwdDiff_tendsto_zero ⟨κ, hκ⟩).congr fun n ↦ ?_
  simpa only [AddChar.map_zero_eq_one, mul_one] using fwdDiff_addChar_eq κ 0 1 n

namespace PadicInt
variable [CompleteSpace R]

/-- The unique continuous additive character of `ℤ_[p]` mapping `1` to `1 + r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeb2afe31832f0fb702180fc19b9c8b34da0741f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
