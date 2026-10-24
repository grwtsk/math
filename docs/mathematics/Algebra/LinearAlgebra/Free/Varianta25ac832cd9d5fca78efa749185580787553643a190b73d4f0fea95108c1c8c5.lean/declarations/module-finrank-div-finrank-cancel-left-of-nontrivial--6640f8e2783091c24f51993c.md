# Module.finrank_div_finrank_cancel_left_of_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3684aa342bd506766b87c1c6326320c428a6bff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46579b58-c04d-3a2e-6ac1-60b5088e94fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93941917-2100-5c3d-2154-7b8663429900",
  "kind": "theorem",
  "lexical_name": "Module.finrank_div_finrank_cancel_left_of_nontrivial",
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
  "slug": "module-finrank-div-finrank-cancel-left-of-nontrivial--6640f8e2783091c24f51993c",
  "source": {
    "blob": "a3684aa342bd506766b87c1c6326320c428a6bff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6640f8e2783091c24f51993cc22202d9788669bdb5b58c802f1d5f799a262844",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93941917-2100-5c3d-2154-7b8663429900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.finrank_div_finrank_cancel_left_of_nontrivial [Nontrivial K] [Module.Finite F K] :
    Module.finrank F A / Module.finrank F K = Module.finrank K A :=
  finrank_div_finrank_cancel_left F K A ((finrank_pos_iff_of_free ..).mpr ‹_›).ne'

end Tower

variable {R : Type u} {S : Type*} {M M₁ : Type v} {M' : Type v'}
variable [Semiring R]
variable [AddCommMonoid M] [Module R M] [Module.Free R M]
variable [AddCommMonoid M'] [Module R M'] [Module.Free R M']
variable [AddCommMonoid M₁] [Module R M₁] [Module.Free R M₁]

namespace Module.Free

variable {N : Type v} [AddCommMonoid N] [Module R N]
variable {N' : Type v'} [AddCommMonoid N'] [Module R N']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3684aa342bd506766b87c1c6326320c428a6bff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
