# sign_sumCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05ae132b86102a2cde2ffbc4acd150637e8d8e20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 766,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c02e248-f23a-0da2-ca9d-b7dae37f5cf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeec04ad-170d-76a4-1a63-bf984ce06124",
  "kind": "theorem",
  "lexical_name": "sign_sumCongr",
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
  "slug": "sign-sumcongr--182f91e60279f01f0b2c423d",
  "source": {
    "blob": "05ae132b86102a2cde2ffbc4acd150637e8d8e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 766,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:182f91e60279f01f0b2c423de5afb4a85a7900eb4a63e708c90fc74ac37631ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeec04ad-170d-76a4-1a63-bf984ce06124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sign_sumCongr (σa : Perm α) (σb : Perm β) : sign (sumCongr σa σb) = sign σa * sign σb := by
  suffices sign (sumCongr σa (1 : Perm β)) = sign σa ∧ sign (sumCongr (1 : Perm α) σb) = sign σb
    by rw [← this.1, ← this.2, ← sign_mul, sumCongr_mul, one_mul, mul_one]
  constructor
  · refine' σa.swap_induction_on ?_ fun σa' a₁ a₂ ha ih => ?_
    · simp
    · rw [← one_mul (1 : Perm β), ← sumCongr_mul, sign_mul, sign_mul, ih, sumCongr_swap_one,
        sign_swap ha, sign_swap (Sum.inl_injective.ne_iff.mpr ha)]
  · refine' σb.swap_induction_on ?_ fun σb' b₁ b₂ hb ih => ?_
    · simp
    · rw [← one_mul (1 : Perm α), ← sumCongr_mul, sign_mul, sign_mul, ih, sumCongr_one_swap,
        sign_swap hb, sign_swap (Sum.inr_injective.ne_iff.mpr hb)]
#align equiv.perm.sign_sum_congr Equiv.Perm.sign_sumCongr

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant644bbb5aff82b87de9bb040d24753408c3d9431b982beb28b1c7dd758bc63400.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05ae132b86102a2cde2ffbc4acd150637e8d8e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
