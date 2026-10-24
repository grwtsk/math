# isSubnormal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8424b03-4981-9775-ce9f-adb35fbd3eb1",
  "kind": "lemma",
  "lexical_name": "isSubnormal_iff",
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
  "slug": "issubnormal-iff--8826d9245841ef0e1fe24354",
  "source": {
    "blob": "4c650d05b3d7110f32d6f89de99008bab81d9bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 185,
    "path": "GRWTSK/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8826d9245841ef0e1fe2435418c036fbcbff48ad25de0c444ddffcdf9c2cd2c9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8424b03-4981-9775-ce9f-adb35fbd3eb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSubnormal_iff : H.IsSubnormal ↔
    ∃ n, ∃ f : ℕ → Subgroup G,
    (Monotone f) ∧ (∀ i, ((f i).subgroupOf (f (i + 1))).Normal) ∧
      f 0 = H ∧ f n = ⊤ where
  mp h := by
    induction h with
    | top =>
      use 0, fun _ ↦ ⊤, ?_, (by simp)
      exact monotone_nat_of_le_succ fun _ ↦ le_top
    | step H K h_le hSubn hN ih =>
      obtain ⟨n, f, hf, f0, fn⟩ := ih
      use n + 1, fun | 0 => H | n + 1 => f n, ?_, ?_
      · grind
      · refine monotone_nat_of_le_succ ?_
        grind only [monotone_iff_forall_lt]
      · grind
  mpr := by
    rintro ⟨n, hyps⟩
    revert H
    induction n with
    | zero => simp_all
    | succ n ih =>
      rintro J ⟨F, hF, H_le, rfl, ih1⟩
      refine step _ _ (hF <| Nat.le_add_right 0 1) ?_ (H_le _)
      refine ih ⟨fun n ↦ F (n + 1), ?_⟩
      grind only [Monotone, monotone_iff_forall_lt]

alias ⟨exists_chain, _⟩ := isSubnormal_iff

/--
Subnormality is transitive.

This version involves an explicit `subtype`; the version `IsSubnormal.trans` does not.
-/
@[to_additive /-- Subnormality is transitive.

This version involves an explicit `subtype`; the version `IsSubnormal.trans` does not. -/]
protected
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsSubnormal/Varianta9513063015babca3d35a73fb6df920ee68aafce5074af82190232fe3a0d93de.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c650d05b3d7110f32d6f89de99008bab81d9bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
