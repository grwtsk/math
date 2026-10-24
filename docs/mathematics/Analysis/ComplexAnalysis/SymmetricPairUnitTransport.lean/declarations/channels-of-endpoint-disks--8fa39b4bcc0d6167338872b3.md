# channels_of_endpoint_disks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75701f93-b9eb-44f5-bf81-87723d959b03",
  "kind": "theorem",
  "lexical_name": "channels_of_endpoint_disks",
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
  "slug": "channels-of-endpoint-disks--8fa39b4bcc0d6167338872b3",
  "source": {
    "blob": "6c58f5cab5ebba880c91a9314aecea6665ca8ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 84,
    "path": "GRWTSK/Analysis/Complex/SymmetricPairUnitTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fa39b4bcc0d6167338872b36d56ba3a67a3af746d050dc95dce02b15d84915b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75701f93-b9eb-44f5-bf81-87723d959b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem channels_of_endpoint_disks {F : ℂ → ℂ} {c d p q : ℂ} {ep em : ℝ}
    (hp : ‖F (c+d)-p‖ ≤ ep) (hm : ‖F (c-d)-q‖ ≤ em) :
    ‖even F c d-(p+q)/2‖ ≤ (ep+em)/2 ∧
      ‖odd F c d-(p-q)/(2*d)‖ ≤ (ep+em)/(2*‖d‖) := by
  constructor
  · have he : even F c d-(p+q)/2=((F (c+d)-p)+(F (c-d)-q))/2 := by
      unfold even; ring
    rw [he,norm_div]
    have h := (norm_add_le (F (c+d)-p) (F (c-d)-q)).trans (add_le_add hp hm)
    norm_num only [show ‖(2 : ℂ)‖=(2 : ℝ) by norm_num]
    exact div_le_div_of_nonneg_right h (by norm_num)
  · have he : odd F c d-(p-q)/(2*d)=((F (c+d)-p)-(F (c-d)-q))/(2*d) := by
      unfold odd; ring
    rw [he,norm_div,norm_mul]
    norm_num only [show ‖(2 : ℂ)‖=(2 : ℝ) by norm_num]
    exact div_le_div_of_nonneg_right
      ((norm_sub_le (F (c+d)-p) (F (c-d)-q)).trans (add_le_add hp hm)) (by positivity)

end
end GRWTSK.Analysis.Complex.SymmetricPair
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/SymmetricPairUnitTransport.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c58f5cab5ebba880c91a9314aecea6665ca8ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
