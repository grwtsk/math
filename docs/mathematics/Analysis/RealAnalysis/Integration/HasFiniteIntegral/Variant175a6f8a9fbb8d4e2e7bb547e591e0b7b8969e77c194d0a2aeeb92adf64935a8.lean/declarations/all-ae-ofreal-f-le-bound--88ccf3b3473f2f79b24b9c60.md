# all_ae_ofReal_f_le_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28ea43be-7d00-5afd-3e7d-fcec2011fe7c",
  "kind": "theorem",
  "lexical_name": "all_ae_ofReal_f_le_bound",
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
  "slug": "all-ae-ofreal-f-le-bound--88ccf3b3473f2f79b24b9c60",
  "source": {
    "blob": "ee358c2a5454c3de226096870a6caf7ce6131bd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 316,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant175a6f8a9fbb8d4e2e7bb547e591e0b7b8969e77c194d0a2aeeb92adf64935a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88ccf3b3473f2f79b24b9c6083b275ef44a31501988207ac1f8dca137adac762",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant175a6f8a9fbb8d4e2e7bb547e591e0b7b8969e77c194d0a2aeeb92adf64935a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28ea43be-7d00-5afd-3e7d-fcec2011fe7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_ae_ofReal_f_le_bound (h_bound : ∀ n, ∀ᵐ a ∂μ, ‖F n a‖ ≤ bound a)
    (h_lim : ∀ᵐ a ∂μ, Tendsto (fun n => F n a) atTop (𝓝 (f a))) :
    ∀ᵐ a ∂μ, ENNReal.ofReal ‖f a‖ ≤ ENNReal.ofReal (bound a) := by
  have F_le_bound := all_ae_ofReal_F_le_bound h_bound
  rw [← ae_all_iff] at F_le_bound
  apply F_le_bound.mp ((all_ae_tendsto_ofReal_norm h_lim).mono _)
  intro a tendsto_norm F_le_bound
  exact le_of_tendsto' tendsto_norm F_le_bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant175a6f8a9fbb8d4e2e7bb547e591e0b7b8969e77c194d0a2aeeb92adf64935a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variant175a6f8a9fbb8d4e2e7bb547e591e0b7b8969e77c194d0a2aeeb92adf64935a8.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee358c2a5454c3de226096870a6caf7ce6131bd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
