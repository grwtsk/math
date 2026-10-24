# mem_left_iff_eq_zero_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6750d611-fe86-4c4e-c2ba-7ab1b30f98cf",
  "kind": "theorem",
  "lexical_name": "mem_left_iff_eq_zero_of_disjoint",
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
  "slug": "mem-left-iff-eq-zero-of-disjoint--cd63954f2aa3e8dad7140bc1",
  "source": {
    "blob": "f0f55f21c454bad66bfd0e7f7312b6d29219d096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 366,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd63954f2aa3e8dad7140bc1778c945970ace8541af562280d84252bec78987a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6750d611-fe86-4c4e-c2ba-7ab1b30f98cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_left_iff_eq_zero_of_disjoint {p p' : Submodule R M} (h : Disjoint p p') {x : p'} :
    (x : M) ∈ p ↔ x = 0 :=
  ⟨fun hx => coe_eq_zero.1 <| disjoint_def.1 h x hx x.2, fun h => h.symm ▸ p.zero_mem⟩

end Submodule

section NatSubmodule

/-!
## ℕ-submodules
-/

/-- An additive submonoid is equivalent to a ℕ-submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f55f21c454bad66bfd0e7f7312b6d29219d096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
