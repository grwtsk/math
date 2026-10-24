# card_sym_fin_eq_multichoose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a956ad4d-3d14-25c8-b3c8-abc68cb80c56",
  "kind": "theorem",
  "lexical_name": "card_sym_fin_eq_multichoose",
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
  "slug": "card-sym-fin-eq-multichoose--a9225b16d0b7aaef1c93c989",
  "source": {
    "blob": "494f42dbdcb9464e0acb42af3c0667fc42bf0322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9225b16d0b7aaef1c93c9892af1560cb2cb39cea6d107b73c232bbddd83b0b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a956ad4d-3d14-25c8-b3c8-abc68cb80c56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_sym_fin_eq_multichoose : ∀ n k : ℕ, card (Sym (Fin n) k) = multichoose n k
  | n, 0 => by simp
  | 0, k + 1 => by rw [multichoose_zero_succ]; exact card_eq_zero
  | 1, k + 1 => by simp
  | n + 2, k + 1 => by
    rw [multichoose_succ_succ, ← card_sym_fin_eq_multichoose (n + 1) (k + 1),
      ← card_sym_fin_eq_multichoose (n + 2) k, add_comm (Fintype.card _), ← card_sum]
    refine Fintype.card_congr (Equiv.symm ?_)
    apply (Sym.e1.symm.sumCongr Sym.e2.symm).trans
    apply Equiv.sumCompl
  termination_by card_sym_fin_eq_multichoose n k => n + k
#align sym.card_sym_fin_eq_multichoose Sym.card_sym_fin_eq_multichoose

/-- For any fintype `α` of cardinality `n`, `card (Sym α k) = multichoose (card α) k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantf39f6980ffdce414843c120cabc560d201b67ff675fdffd2d992042501d001b5.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494f42dbdcb9464e0acb42af3c0667fc42bf0322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
