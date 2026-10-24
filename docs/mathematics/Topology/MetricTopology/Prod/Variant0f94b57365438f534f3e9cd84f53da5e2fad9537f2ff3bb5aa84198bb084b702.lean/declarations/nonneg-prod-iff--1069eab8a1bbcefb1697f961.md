# nonneg_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "079ab8787526947723b72f417daf569188f7b77c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6d1df7b-cd0a-24d5-3656-8bf2a2f700d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffe2e8b8-61c3-f899-f4f8-76740e6ae92d",
  "kind": "theorem",
  "lexical_name": "nonneg_prod_iff",
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
  "slug": "nonneg-prod-iff--1069eab8a1bbcefb1697f961",
  "source": {
    "blob": "079ab8787526947723b72f417daf569188f7b77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 145,
    "path": "GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1069eab8a1bbcefb1697f961d8483dc065845c1a9d75f759c2ba9082044c626f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffe2e8b8-61c3-f899-f4f8-76740e6ae92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonneg_prod_iff [Preorder P] [AddLeftMono P]
    {Q₁ : QuadraticMap R M₁ P} {Q₂ : QuadraticMap R M₂ P} :
    (∀ x, 0 ≤ (Q₁.prod Q₂) x) ↔ (∀ x, 0 ≤ Q₁ x) ∧ ∀ x, 0 ≤ Q₂ x := by
  simp_rw [Prod.forall, prod_apply]
  constructor
  · intro h
    constructor
    · intro x; simpa only [add_zero, map_zero] using h x 0
    · intro x; simpa only [zero_add, map_zero] using h 0 x
  · rintro ⟨h₁, h₂⟩ x₁ x₂
    exact add_nonneg (h₁ x₁) (h₂ x₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `079ab8787526947723b72f417daf569188f7b77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
