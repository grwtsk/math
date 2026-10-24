# LinearOrderedAddCommGroup.int_orderAddMonoidIso_of_isLeast_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc7e321af9df0e2fce5eb4124c086cb0d271e9a90c6d9f6774ef18d339b97b62",
  "kind": "def",
  "lexical_name": "LinearOrderedAddCommGroup.int_orderAddMonoidIso_of_isLeast_pos",
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
  "slug": "linearorderedaddcommgroup-int-orderaddmonoidiso-of-isleast-pos--85d9d0fa85a3eb8baa31f12c",
  "source": {
    "blob": "1662abefae9ae2f71c08820aa9bbfa621a9151b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 174,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85d9d0fa85a3eb8baa31f12c56dfef464d9dabd59dcc6fd19b4e18796c553922",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc7e321af9df0e2fce5eb4124c086cb0d271e9a90c6d9f6774ef18d339b97b62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def LinearOrderedAddCommGroup.int_orderAddMonoidIso_of_isLeast_pos {G : Type*}
    [AddCommGroup G] [LinearOrder G] [IsOrderedAddMonoid G] [Archimedean G] {x : G}
    (h : IsLeast {y : G | 0 < y} x) : G ≃+o ℤ := by
  have : IsLeast {y : G | y ∈ (⊤ : AddSubgroup G) ∧ 0 < y} x := by simpa using h
  replace this := AddSubgroup.cyclic_of_min this
  let e : G ≃+o (⊤ : AddSubgroup G) := ⟨AddSubsemigroup.topEquiv.symm,
    (AddEquiv.strictMono_symm AddSubsemigroup.strictMono_topEquiv).le_iff_le⟩
  let e' : (⊤ : AddSubgroup G) ≃+o AddSubgroup.closure {x} :=
    ⟨AddEquiv.subsemigroupCongr (by simp [this]),
     (AddEquiv.strictMono_subsemigroupCongr _).le_iff_le⟩
  let g : (⊤ : AddSubgroup ℤ) ≃+o ℤ := ⟨AddSubsemigroup.topEquiv,
    (AddSubsemigroup.strictMono_topEquiv).le_iff_le⟩
  let g' : AddSubgroup.closure ({1} : Set ℤ) ≃+o (⊤ : AddSubgroup ℤ) :=
    ⟨(.subsemigroupCongr (by simp [AddSubgroup.closure_singleton_int_one_eq_top])),
     (AddEquiv.strictMono_subsemigroupCongr _).le_iff_le⟩
  let f := closure_equiv_closure x (1 : ℤ) (by simp [h.left.ne'])
  exact ((((e.trans e').trans f).trans g').trans g : G ≃+o ℤ)

/-- If an element of a linearly ordered mul-archimedean group is the least element greater than 1,
then the whole group is isomorphic (and order-isomorphic) to the multiplicative integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1662abefae9ae2f71c08820aa9bbfa621a9151b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
