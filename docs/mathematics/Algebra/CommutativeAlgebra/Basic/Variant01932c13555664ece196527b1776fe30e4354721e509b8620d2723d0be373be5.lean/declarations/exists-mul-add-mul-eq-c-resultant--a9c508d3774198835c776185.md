# exists_mul_add_mul_eq_C_resultant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 874,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c7300a5-dac0-475c-c7ae-e8f8b6417d78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50ed4215-8ee1-7b82-15f1-34146135fa8e",
  "kind": "lemma",
  "lexical_name": "exists_mul_add_mul_eq_C_resultant",
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
  "slug": "exists-mul-add-mul-eq-c-resultant--a9c508d3774198835c776185",
  "source": {
    "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 874,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9c508d3774198835c776185a5a6bf46160d1489bce65eb86b17c0b9ddd15ff7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50ed4215-8ee1-7b82-15f1-34146135fa8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 874–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mul_add_mul_eq_C_resultant
    (f g : R[X]) (hf : f.natDegree ≤ m) (hg : g.natDegree ≤ n) (H : m ≠ 0 ∨ n ≠ 0) :
    ∃ p q, p.degree < ↑n ∧ q.degree < ↑m ∧ f * p + g * q = C (f.resultant g m n) := by
  nontriviality R
  let X := adjSylvester f g ⟨1, by simpa [Polynomial.mem_degreeLT,
    ← Nat.cast_add, Nat.pos_iff_ne_zero, not_and_or, -not_and] using H⟩
  have : ((sylvesterMap f g hf hg X)).1 = _ :=
    congr(($(sylveserMap_comp_adjSylvester f g hf hg) _).1)
  refine ⟨X.2, X.1, by simpa [-SetLike.coe_mem] using X.2.2,
    by simpa [-SetLike.coe_mem] using X.1.2, by simpa [Algebra.smul_def] using this⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean#L874).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af96ec828f2fbad992039b9ff6e5febc791c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
