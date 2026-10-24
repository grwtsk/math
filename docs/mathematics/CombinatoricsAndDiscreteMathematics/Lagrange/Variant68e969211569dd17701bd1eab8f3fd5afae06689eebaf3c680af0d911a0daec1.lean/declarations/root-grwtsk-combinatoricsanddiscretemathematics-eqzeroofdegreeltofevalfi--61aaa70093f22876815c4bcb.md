# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.EqZeroOfDegreeLtOfEvalFinsetEqZero.Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.Polynomial.exists_eval_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5161e51-5464-18aa-9e76-5a3708e3efd5",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.EqZeroOfDegreeLtOfEvalFinsetEqZero.Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.Polynomial.exists_eval_eq_iff",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-eqzeroofdegreeltofevalfi--61aaa70093f22876815c4bcb",
  "source": {
    "blob": "3a5c6e9c5c21ff1813f9403c4c09416798e98058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 516,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61aaa70093f22876815c4bcb6e213f897ee12051f9a824c994fe3cf64ccbb01e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5161e51-5464-18aa-9e76-5a3708e3efd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.EqZeroOfDegreeLtOfEvalFinsetEqZero.Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.Polynomial.exists_eval_eq_iff {ι : Type*} [Finite ι] (x y : ι → F) :
    (∃ q : F[X], ∀ i, q.eval (x i) = y i) ↔ ∀ i j, x i = x j → y i = y j := by
  refine ⟨fun ⟨q, hq⟩ i j hij ↦ by rw [← hq, ← hq, hij], fun hwd ↦ ?_⟩
  classical
  have : Fintype ι := Fintype.ofFinite ι
  have hinj : Set.InjOn (fun d : F ↦ d) (Finset.univ.image x) := Function.injective_id.injOn
  set v : F → F := fun z ↦ if h : ∃ i, x i = z then y h.choose else 0 with v_def
  refine ⟨Lagrange.interpolate (Finset.univ.image x) (fun d : F ↦ d) v, fun i ↦ ?_⟩
  rw [Lagrange.eval_interpolate_at_node _ hinj (by simp), v_def]
  simp only
  split_ifs with h
  · exact hwd _ _ h.choose_spec
  · aesop

end Interpolate

section Nodal

variable {R : Type*} [CommRing R] {ι : Type*}
variable {s : Finset ι} {v : ι → R}

open Finset Polynomial

/-- `nodal s v` is the unique monic polynomial whose roots are the nodes defined by `v` and `s`.

That is, the roots of `nodal s v` are exactly the image of `v` on `s`,
with appropriate multiplicity.

We can use `nodal` to define the barycentric forms of the evaluated interpolant.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a5c6e9c5c21ff1813f9403c4c09416798e98058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
