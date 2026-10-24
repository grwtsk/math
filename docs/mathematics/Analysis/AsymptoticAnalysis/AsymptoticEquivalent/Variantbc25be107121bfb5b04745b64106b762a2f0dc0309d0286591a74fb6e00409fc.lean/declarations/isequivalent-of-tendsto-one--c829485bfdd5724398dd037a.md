# isEquivalent_of_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5683d99bb4787c6e984da64497b8f9e7455a784a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6b9339b-2c3a-1040-5c0c-2ce00f831445",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f0ee1e9-e37f-5392-f7f0-671838dd33f1",
  "kind": "theorem",
  "lexical_name": "isEquivalent_of_tendsto_one",
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
  "slug": "isequivalent-of-tendsto-one--c829485bfdd5724398dd037a",
  "source": {
    "blob": "5683d99bb4787c6e984da64497b8f9e7455a784a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 218,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variantbc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c829485bfdd5724398dd037a8cab7022d5f7974e3f212fe6bd87cc8577506e74",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variantbc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f0ee1e9-e37f-5392-f7f0-671838dd33f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEquivalent_of_tendsto_one (hz : ∀ᶠ x in l, v x = 0 → u x = 0)
    (huv : Tendsto (u / v) l (𝓝 1)) : u ~[l] v := by
  rw [isEquivalent_iff_exists_eq_mul]
  refine' ⟨u / v, huv, hz.mono fun x hz' ↦ (div_mul_cancel_of_imp hz').symm⟩
#align asymptotics.is_equivalent_of_tendsto_one Asymptotics.isEquivalent_of_tendsto_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variantbc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variantbc25be107121bfb5b04745b64106b762a2f0dc0309d0286591a74fb6e00409fc.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5683d99bb4787c6e984da64497b8f9e7455a784a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
