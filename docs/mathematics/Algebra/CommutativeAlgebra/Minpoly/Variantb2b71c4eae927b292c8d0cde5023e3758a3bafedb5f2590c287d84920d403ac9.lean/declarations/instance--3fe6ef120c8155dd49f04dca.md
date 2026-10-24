# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8d092001c98868d9ab3e9f9ee91ac3eb0203a59fe1158e18b2641e20679922b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3fe6ef120c8155dd49f04dca",
  "source": {
    "blob": "b54eec1b612243be10d42769743e1b979f93d762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 100,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fe6ef120c8155dd49f04dcafc7cad911b9a2500265b599631eaaaa30dcf72e8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8d092001c98868d9ab3e9f9ee91ac3eb0203a59fe1158e18b2641e20679922b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
noncomputable instance (f : End K V) : Fintype f.Eigenvalues :=
  Set.Finite.fintype <| show {μ | eigenspace f μ ≠ ⊥}.Finite by
    have h : minpoly K f ≠ 0 := minpoly.ne_zero f.isIntegral
    convert (minpoly K f).rootSet_finite K
    ext μ
    -- Porting note: was the below, but this applied unwanted simp lemmas
    -- ```
    -- classical simp [Polynomial.rootSet_def, Polynomial.mem_roots h, ← hasEigenvalue_iff_isRoot,
    --   HasEigenvalue]
    -- ```
    rw [Set.mem_setOf_eq, ← HasEigenvalue, hasEigenvalue_iff_isRoot, mem_rootSet_of_ne h, IsRoot,
      coe_aeval_eq_eval]

end End

end Module
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54eec1b612243be10d42769743e1b979f93d762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
