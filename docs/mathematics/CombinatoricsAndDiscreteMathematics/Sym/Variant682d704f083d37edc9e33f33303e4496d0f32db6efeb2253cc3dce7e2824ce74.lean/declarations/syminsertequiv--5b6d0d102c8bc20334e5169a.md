# symInsertEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d69aef230c9ab4825fcd06bda6490005a4035e56367e899e332a251f9c62f55",
  "kind": "def",
  "lexical_name": "symInsertEquiv",
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
  "slug": "syminsertequiv--5b6d0d102c8bc20334e5169a",
  "source": {
    "blob": "dcf7cb0cba1df56847a58d44e3060a56b8f99b51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 270,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b6d0d102c8bc20334e5169a06d00ef0f8680ad88ca8e26935f92e5ceb689d6f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d69aef230c9ab4825fcd06bda6490005a4035e56367e899e332a251f9c62f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def symInsertEquiv (h : a ∉ s) : (insert a s).sym n ≃ Σi : Fin (n + 1), s.sym (n - i) where
  toFun m := ⟨_, (m.1.filterNe a).2, by convert sym_filterNe_mem a m.2; rw [erase_insert h]⟩
  invFun m := ⟨m.2.1.fill a m.1, sym_fill_mem a m.2.2⟩
  left_inv m := Subtype.ext <| m.1.fill_filterNe a
  right_inv := fun ⟨i, m, hm⟩ ↦ by
    refine Function.Injective.sigma_map (β₂ := ?_) (f₂ := ?_)
        (Function.injective_id) (fun i ↦ ?_) ?_
    · exact fun i ↦ Sym α (n - i)
    swap
    · exact Subtype.coe_injective
    refine Eq.trans ?_ (Sym.filter_ne_fill a _ ?_)
    exacts [rfl, h ∘ mem_sym_iff.1 hm a]

end Sym

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant682d704f083d37edc9e33f33303e4496d0f32db6efeb2253cc3dce7e2824ce74.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcf7cb0cba1df56847a58d44e3060a56b8f99b51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
