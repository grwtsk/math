# mulDissociated_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09a6510d-5fbf-f2ba-3e95-5289656bab41",
  "kind": "lemma",
  "lexical_name": "mulDissociated_inv",
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
  "slug": "muldissociated-inv--6ac02d7ac7c4d8e61858eeb5",
  "source": {
    "blob": "9faa55897188696dceaad7b57ab2e57276d0b664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac02d7ac7c4d8e61858eeb58378b96b132b7d1058e91528e28a53ce0697bd9c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09a6510d-5fbf-f2ba-3e95-5289656bab41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive (attr := simp)] lemma mulDissociated_inv : MulDissociated s⁻¹ ↔ MulDissociated s :=
  (MulEquiv.inv α).mulDissociated_preimage

@[to_additive] protected alias ⟨MulDissociated.of_inv, MulDissociated.inv⟩ := mulDissociated_inv

end dissociation

namespace Finset
variable [DecidableEq α] [Fintype α] {s t u : Finset α} {a : α} {d : ℕ}

/-- The span of a finset `s` is the finset of elements of the form `∏ a ∈ s, a ^ ε a` where
`ε ∈ {-1, 0, 1} ^ s`.

This is an analog of the linear span in a vector space, but with the "scalars" restricted to
`0` and `±1`. -/
@[to_additive "The span of a finset `s` is the finset of elements of the form `∑ a ∈ s, ε a • a`
where `ε ∈ {-1, 0, 1} ^ s`.

This is an analog of the linear span in a vector space, but with the \"scalars\" restricted to
`0` and `±1`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9faa55897188696dceaad7b57ab2e57276d0b664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
