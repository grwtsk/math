# _root_.Antitone.monovary_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "193d1bb8afafe0e94b4372d9d941df70e7561d31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ca828a3-e6a3-fb7d-d641-8f40f13fbf42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b965a6f-bb88-d13c-0b0a-cb1b80c10236",
  "kind": "lemma",
  "lexical_name": "_root_.Antitone.monovary_antitone",
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
  "slug": "root-antitone-monovary-antitone--728e99b87aa11232758f4964",
  "source": {
    "blob": "193d1bb8afafe0e94b4372d9d941df70e7561d31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 133,
    "path": "GRWTSK/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:728e99b87aa11232758f4964862cf1d5d7bffa0b855efb4dd97543dd677d050b",
  "verification": {
    "reference": "docs/verification/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b965a6f-bb88-d13c-0b0a-cb1b80c10236`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Antitone.monovary_antitone {ι α : Type*} [LinearOrder ι] [Preorder α]
    {f g : ι → α} (hf : Antitone f) (hg : Antitone g) : Monovary f g :=
  fun _ _ hgij => hf (not_lt.mp fun hij => hgij.not_ge (hg hij.le))

/-- The core combinatorial step: for `a, b : n → ℝ` that monovary and
`S` doubly stochastic, `∑ₖₗ aₖ Sₖₗ bₗ ≤ ∑ₖ aₖ bₖ`.

Proof: `∑ₖₗ aₖ Sₖₗ bₗ = ∑ₖ aₖ (S *ᵥ b)ₖ = a ⬝ (S *ᵥ b)`. By Birkhoff,
`S *ᵥ b = ∑_σ w_σ · (b ∘ σ)` (via `permMatrix_mulVec`). For each `σ`,
`∑ₖ aₖ b(σ k) ≤ ∑ₖ aₖ bₖ` by rearrangement. Average with weights `w_σ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `193d1bb8afafe0e94b4372d9d941df70e7561d31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
