# lap_residue_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86e0f306b489ee4710b64ee6c71a631f0b360860",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e18b28a9c0ece435f3f871064301e9b12c65e6264824c3666ec9dc501ecec73f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c39ccde-5f2c-c27f-a84c-1dc4e7609cb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f86bf8b0-0691-a4b8-edae-7cd51d7030e8",
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
  "slug": "lap-residue-unique--ef9bfedefe68ded8f327ce75",
  "source": {
    "blob": "86e0f306b489ee4710b64ee6c71a631f0b360860",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 76,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variante18b28a9c0ece435f3f871064301e9b12c65e6264824c3666ec9dc501ecec73f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef9bfedefe68ded8f327ce7583f61ac2b1a0e0b27b223172f016ccb24b8c22f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variante18b28a9c0ece435f3f871064301e9b12c65e6264824c3666ec9dc501ecec73f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f86bf8b0-0691-a4b8-edae-7cd51d7030e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–102.

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

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variante18b28a9c0ece435f3f871064301e9b12c65e6264824c3666ec9dc501ecec73f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variante18b28a9c0ece435f3f871064301e9b12c65e6264824c3666ec9dc501ecec73f.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86e0f306b489ee4710b64ee6c71a631f0b360860` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
