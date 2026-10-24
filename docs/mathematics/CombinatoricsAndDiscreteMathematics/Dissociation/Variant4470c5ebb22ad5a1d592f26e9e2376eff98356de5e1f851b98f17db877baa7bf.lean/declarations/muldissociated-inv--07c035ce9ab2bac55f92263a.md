# mulDissociated_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6310eec2-baed-b1a7-2b6c-757f6564ecc6",
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
  "slug": "muldissociated-inv--07c035ce9ab2bac55f92263a",
  "source": {
    "blob": "bc8bfce0e0e3433003ebc171cec847cc559cbb2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07c035ce9ab2bac55f92263a757f7537a60aacaf20b14736b73535d5ef8f4652",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6310eec2-baed-b1a7-2b6c-757f6564ecc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–108.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant4470c5ebb22ad5a1d592f26e9e2376eff98356de5e1f851b98f17db877baa7bf.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc8bfce0e0e3433003ebc171cec847cc559cbb2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
