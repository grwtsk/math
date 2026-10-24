# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:230ca29895586ff5519c0090c6d0d5de84cce7a9edd2c59113069e9e716c9503",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8fb67be6814e27dff4a8f3b0",
  "source": {
    "blob": "88330105806f78712c4ad7f3ce5f1dc80f498599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 415,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fb67be6814e27dff4a8f3b089e616ad1a52b1cfa43410e8061e3542ce866dbd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:230ca29895586ff5519c0090c6d0d5de84cce7a9edd2c59113069e9e716c9503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SemilatticeInf (Finpartition a) :=
  { inf := Min.min
    inf_le_left := fun P Q b hb ↦ by
      obtain ⟨c, hc, rfl⟩ := mem_image.1 (mem_of_mem_erase hb)
      rw [mem_product] at hc
      exact ⟨c.1, hc.1, inf_le_left⟩
    inf_le_right := fun P Q b hb ↦ by
      obtain ⟨c, hc, rfl⟩ := mem_image.1 (mem_of_mem_erase hb)
      rw [mem_product] at hc
      exact ⟨c.2, hc.2, inf_le_right⟩
    le_inf := fun P Q R hPQ hPR b hb ↦ by
      obtain ⟨c, hc, hbc⟩ := hPQ hb
      obtain ⟨d, hd, hbd⟩ := hPR hb
      have h := _root_.le_inf hbc hbd
      refine
        ⟨c ⊓ d,
          mem_erase_of_ne_of_mem (ne_bot_of_le_ne_bot (P.ne_bot hb) h)
            (mem_image.2 ⟨(c, d), mem_product.2 ⟨hc, hd⟩, rfl⟩),
          h⟩ }

/-- Restrict a partition of `a` to `b` where `b ≤ a` by intersecting each part with `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88330105806f78712c4ad7f3ce5f1dc80f498599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
