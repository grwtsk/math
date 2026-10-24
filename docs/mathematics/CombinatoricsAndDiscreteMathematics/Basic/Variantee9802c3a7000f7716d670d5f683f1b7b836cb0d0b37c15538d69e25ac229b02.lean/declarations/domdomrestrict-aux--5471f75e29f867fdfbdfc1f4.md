# domDomRestrict_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeb03b76-7d8f-1b89-66ab-e23e7e6c3b53",
  "kind": "lemma",
  "lexical_name": "domDomRestrict_aux",
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
  "slug": "domdomrestrict-aux--5471f75e29f867fdfbdfc1f4",
  "source": {
    "blob": "59ca40d74cc428dda0374c2a4e15d58072dcc5e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 734,
    "line": 718,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantee9802c3a7000f7716d670d5f683f1b7b836cb0d0b37c15538d69e25ac229b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5471f75e29f867fdfbdfc1f49078093e88c21a616712e65e5fb9aabb4937404a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantee9802c3a7000f7716d670d5f683f1b7b836cb0d0b37c15538d69e25ac229b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeb03b76-7d8f-1b89-66ab-e23e7e6c3b53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–734.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma domDomRestrict_aux {ι} [DecidableEq ι] (P : ι → Prop) [DecidablePred P] {M₁ : ι → Type*}
    [DecidableEq {a // P a}]
    (x : (i : {a // P a}) → M₁ i) (z : (i : {a // ¬ P a}) → M₁ i) (i : {a : ι // P a})
    (c : M₁ i) : (fun j ↦ if h : P j then Function.update x i c ⟨j, h⟩ else z ⟨j, h⟩) =
    Function.update (fun j => if h : P j then x ⟨j, h⟩ else z ⟨j, h⟩) i c := by
  ext j
  by_cases h : j = i
  · rw [h, Function.update_self]
    simp only [i.2, update_self, dite_true]
  · rw [Function.update_of_ne h]
    by_cases h' : P j
    · simp only [h', ne_eq, Subtype.mk.injEq, dite_true]
      have h'' : ¬ ⟨j, h'⟩ = i :=
        fun he => by apply_fun (fun x => x.1) at he; exact h he
      rw [Function.update_of_ne h'']
    · simp only [h', ne_eq, Subtype.mk.injEq, dite_false]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantee9802c3a7000f7716d670d5f683f1b7b836cb0d0b37c15538d69e25ac229b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantee9802c3a7000f7716d670d5f683f1b7b836cb0d0b37c15538d69e25ac229b02.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ca40d74cc428dda0374c2a4e15d58072dcc5e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
