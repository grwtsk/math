# span_single_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "047570535a4ce63765fc66619335376781c4e015",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7998337-8c79-2488-1861-27e5dc21fe3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03f867bd-77d9-5552-6edb-55776561907d",
  "kind": "lemma",
  "lexical_name": "span_single_eq_top",
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
  "slug": "span-single-eq-top--1b6274fa586babcd7a644b7a",
  "source": {
    "blob": "047570535a4ce63765fc66619335376781c4e015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Span/Variant77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b6274fa586babcd7a644b7a28c58aedb9841155c11d587150f24df295308350",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Span/Variant77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03f867bd-77d9-5552-6edb-55776561907d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_single_eq_top : span R {single i x | (i : α) (x : M)} = ⊤ := by
  refine eq_top_iff'.mpr fun x ↦ ?_
  induction x using Finsupp.induction_linear with
  | zero => exact Submodule.zero_mem ..
  | add f g f_in g_in => exact add_mem f_in g_in
  | single a b => exact mem_span_of_mem ⟨a, b, rfl⟩

end Finsupp

open Finsupp

namespace Submodule

section Semiring

variable {R : Type*} {M : Type*}
variable [Semiring R] [AddCommMonoid M] [Module R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Span/Variant77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Span/Variant77e5e3d3b9227c838642a5db805b2108a1b4277055224fa428aed35e5d5cedb8.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047570535a4ce63765fc66619335376781c4e015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
