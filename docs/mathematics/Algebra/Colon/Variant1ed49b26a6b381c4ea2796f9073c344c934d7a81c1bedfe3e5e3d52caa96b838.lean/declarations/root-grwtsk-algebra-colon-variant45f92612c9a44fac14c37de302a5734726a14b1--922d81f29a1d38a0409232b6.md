# _root_.GRWTSK.Algebra.Colon.Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.Ideal.mem_colon_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:583dfaa3-3fbf-a15b-6138-f404beadbbbd",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.Colon.Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.Ideal.mem_colon_singleton",
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
  "slug": "root-grwtsk-algebra-colon-variant45f92612c9a44fac14c37de302a5734726a14b1--922d81f29a1d38a0409232b6",
  "source": {
    "blob": "157dcdefd86227e61c3487e7ae6d8b4c0deda48e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:922d81f29a1d38a0409232b6468b8d57687c2877e8a145b6062af8a5c0c580e4",
  "verification": {
    "reference": "docs/verification/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:583dfaa3-3fbf-a15b-6138-f404beadbbbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.Colon.Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.Ideal.mem_colon_singleton {I : Ideal R} {x r : R} :
    r ∈ I.colon (Ideal.span {x}) ↔ r * x ∈ I := by
  simp only [← Ideal.submodule_span_eq, Submodule.mem_colon_singleton, smul_eq_mul]

end CommSemiring

section Ring

variable [Ring R] [AddCommGroup M] [Module R M]
variable {N N₁ N₂ P P₁ P₂ : Submodule R M}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `157dcdefd86227e61c3487e7ae6d8b4c0deda48e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
