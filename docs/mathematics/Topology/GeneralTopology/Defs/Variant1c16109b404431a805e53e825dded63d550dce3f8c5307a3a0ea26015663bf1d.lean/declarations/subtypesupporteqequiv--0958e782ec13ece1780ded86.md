# subtypeSupportEqEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0913bd06afe34a679581dc003c0c4bb5604141f7140590b7eebe19775ef460f3",
  "kind": "def",
  "lexical_name": "subtypeSupportEqEquiv",
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
  "slug": "subtypesupporteqequiv--0958e782ec13ece1780ded86",
  "source": {
    "blob": "508e6b417841822f3735dba061237c026e730a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 872,
    "line": 850,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0958e782ec13ece1780ded86e71244caeb9ec364836132e5d6ea75e11d115802",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0913bd06afe34a679581dc003c0c4bb5604141f7140590b7eebe19775ef460f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 850–872.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subtypeSupportEqEquiv (s : Finset ι) :
    {f : Π₀ i, β i // f.support = s} ≃ ∀ i : s, {x : β i // x ≠ 0} where
  toFun | ⟨f, hf⟩ => fun ⟨i, hi⟩ ↦ ⟨f i, (f.mem_support_toFun i).1 <| hf.symm ▸ hi⟩
  invFun f := ⟨mk s fun i ↦ (f i).1, Finset.ext fun i ↦ by
    -- TODO: `simp` fails to use `(f _).2` inside `∃ _, _`
    calc
      i ∈ support (mk s fun i ↦ (f i).1) ↔ ∃ h : i ∈ s, (f ⟨i, h⟩).1 ≠ 0 := by simp
      _ ↔ ∃ _ : i ∈ s, True := exists_congr fun h ↦ (iff_true _).mpr (f _).2
      _ ↔ i ∈ s := by simp⟩
  left_inv := by
    rintro ⟨f, rfl⟩
    ext i
    simpa using Eq.symm
  right_inv f := by
    #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
    (replacing grind's canonicalizer with a type-directed normalizer), `grind` closed this goal.
    It is not yet clear whether this is due to defeq abuse in Mathlib or a problem in the new
    canonicalizer; a minimization would help. The original proof was: `grind` -/
    simp

/-- Equivalence between all dependent finitely supported functions `f : Π₀ i, β i` and type
of pairs `⟨s : Finset ι, f : ∀ i : s, {x : β i // x ≠ 0}⟩`. -/
@[simps! apply_fst apply_snd_coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant1c16109b404431a805e53e825dded63d550dce3f8c5307a3a0ea26015663bf1d.lean#L850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `508e6b417841822f3735dba061237c026e730a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
