# lap_residue_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e07bd325-ed73-c60f-0c97-d5bfde5b4afa",
  "kind": "theorem",
  "lexical_name": "lap_residue_unique",
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
  "slug": "lap-residue-unique--c6f606a9539418dad96d03d6",
  "source": {
    "blob": "5c678628ba0919f8548a7b1cc7b256f7c012445a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 84,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f606a9539418dad96d03d63a05a56b5fecb9d9b2eec6ec5b127e1b79258537",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e07bd325-ed73-c60f-0c97-d5bfde5b4afa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lap_residue_unique {a p q r : ℕ} (hp : 0 < p)
    (hr : r < p) (h : a = p * q + r) :
    q = lap p a ∧ r = residue p a := by
  have hlo : q * p ≤ a := by
    calc
      q * p = p * q := Nat.mul_comm q p
      _ ≤ p * q + r := Nat.le_add_right (p * q) r
      _ = a := h.symm
  have hhi : a < (q + 1) * p := by
    calc
      a = p * q + r := h
      _ < p * q + p := Nat.add_lt_add_left hr (p * q)
      _ = (q + 1) * p := by
        simpa [Nat.mul_comm] using (Nat.mul_succ p q).symm
  have hdiv : a / p = q := Nat.div_eq_of_lt_le hlo hhi
  have hmod : a % p = r := by
    calc
      a % p = (p * q + r) % p := by rw [h]
      _ = r % p := Nat.mul_add_mod p q r
      _ = r := (Nat.mod_eq_iff_lt (Nat.ne_of_gt hp)).2 hr
  exact ⟨hdiv.symm, hmod.symm⟩

/--
A prime coordinate stores the exact exponent in addition to its bounded
display digit and continuation lap.
-/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c678628ba0919f8548a7b1cc7b256f7c012445a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
