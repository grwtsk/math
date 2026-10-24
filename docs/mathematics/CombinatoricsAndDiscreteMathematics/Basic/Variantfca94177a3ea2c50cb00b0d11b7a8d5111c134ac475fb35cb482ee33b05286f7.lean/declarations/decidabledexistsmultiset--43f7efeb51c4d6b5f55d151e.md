# decidableDexistsMultiset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6faf2809d94096bd5d576192fc518e80f8be50dc3cf20ce56ea9676277b16eb",
  "kind": "instance",
  "lexical_name": "decidableDexistsMultiset",
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
  "slug": "decidabledexistsmultiset--43f7efeb51c4d6b5f55d151e",
  "source": {
    "blob": "5ada2ea5263a1ce077752f1040a3f6ed1894c2de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1637,
    "line": 1619,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfca94177a3ea2c50cb00b0d11b7a8d5111c134ac475fb35cb482ee33b05286f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43f7efeb51c4d6b5f55d151e33f5e3b81f3841162afea3c99ff73f90da6f37fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantfca94177a3ea2c50cb00b0d11b7a8d5111c134ac475fb35cb482ee33b05286f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6faf2809d94096bd5d576192fc518e80f8be50dc3cf20ce56ea9676277b16eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1619–1637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableDexistsMultiset {p : ∀ a ∈ m, Prop} [_hp : ∀ (a) (h : a ∈ m), Decidable (p a h)] :
    Decidable (∃ (a : _) (h : a ∈ m), p a h) :=
  @decidable_of_iff _ _
    (Iff.intro (fun ⟨⟨a, ha₁⟩, _, ha₂⟩ => ⟨a, ha₁, ha₂⟩) fun ⟨a, ha₁, ha₂⟩ =>
      ⟨⟨a, ha₁⟩, mem_attach _ _, ha₂⟩)
    (@Multiset.decidableExistsMultiset { a // a ∈ m } m.attach (fun a => p a.1 a.2) _)
#align multiset.decidable_dexists_multiset Multiset.decidableDexistsMultiset

end DecidablePiExists

/-! ### Subtraction -/


section

variable [DecidableEq α] {s t u : Multiset α} {a b : α}

/-- `s - t` is the multiset such that `count a (s - t) = count a s - count a t` for all `a`
  (note that it is truncated subtraction, so it is `0` if `count a t ≥ count a s`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantfca94177a3ea2c50cb00b0d11b7a8d5111c134ac475fb35cb482ee33b05286f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfca94177a3ea2c50cb00b0d11b7a8d5111c134ac475fb35cb482ee33b05286f7.lean#L1619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ada2ea5263a1ce077752f1040a3f6ed1894c2de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
