# no_continuous_ae_neg_signModulated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2783225b49518fa754a4265897652c0d868f87b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfe0320a-c7a2-b986-d14c-0b114078f0cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4546c474-1c6f-0d78-f155-f3f3d74a1415",
  "kind": "theorem",
  "lexical_name": "no_continuous_ae_neg_signModulated",
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
  "slug": "no-continuous-ae-neg-signmodulated--c7f912ef627c478a2f3a1659",
  "source": {
    "blob": "c2783225b49518fa754a4265897652c0d868f87b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f912ef627c478a2f3a1659be13e6fb4288fba547865e4ba12b61dbaa15eff8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4546c474-1c6f-0d78-f155-f3f3d74a1415`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_continuous_ae_neg_signModulated {g : ℝ → ℂ} (hg : Continuous g) (h0 : g 0 ≠ 0) :
    ¬ ∃ h : ℝ → ℂ, Continuous h ∧ h =ᵐ[volume] -signModulated g := by
  rintro ⟨h, hh, he⟩
  apply no_continuous_ae_signModulated hg h0
  refine ⟨-h, hh.neg, ?_⟩
  filter_upwards [he] with x hx
  simp only [Pi.neg_apply] at hx ⊢
  rw [hx, neg_neg]

/-- The literal compact source has a continuous standard Fourier transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variantb54ec6450fd7aa08b9f85e6bab02359a7c48a7b94325a361a3b68c91dc9af693.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2783225b49518fa754a4265897652c0d868f87b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
