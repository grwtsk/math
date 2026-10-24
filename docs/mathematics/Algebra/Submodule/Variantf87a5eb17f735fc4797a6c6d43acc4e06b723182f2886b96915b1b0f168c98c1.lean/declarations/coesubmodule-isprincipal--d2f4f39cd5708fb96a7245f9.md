# coeSubmodule_isPrincipal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d0d1919-794f-6e1e-3be6-e66bcea5fae1",
  "kind": "theorem",
  "lexical_name": "coeSubmodule_isPrincipal",
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
  "slug": "coesubmodule-isprincipal--d2f4f39cd5708fb96a7245f9",
  "source": {
    "blob": "a9d5260595b68a0d69126db9cd0c2a21fcd91912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 116,
    "path": "GRWTSK/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f4f39cd5708fb96a7245f969719c5c5400096e300457e7c676222640f3fe12",
  "verification": {
    "reference": "docs/verification/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d0d1919-794f-6e1e-3be6-e66bcea5fae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeSubmodule_isPrincipal {I : Ideal R} (h : M ≤ nonZeroDivisors R) :
    (coeSubmodule S I).IsPrincipal ↔ I.IsPrincipal := by
  constructor <;> rintro ⟨⟨x, hx⟩⟩
  · have x_mem : x ∈ coeSubmodule S I := hx.symm ▸ Submodule.mem_span_singleton_self x
    obtain ⟨x, _, rfl⟩ := (mem_coeSubmodule _ _).mp x_mem
    refine ⟨⟨x, coeSubmodule_injective S h ?_⟩⟩
    rw [Ideal.submodule_span_eq, hx, coeSubmodule_span_singleton]
  · refine ⟨⟨algebraMap R S x, ?_⟩⟩
    rw [hx, Ideal.submodule_span_eq, coeSubmodule_span_singleton]

end NonZeroDivisors

variable {S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d5260595b68a0d69126db9cd0c2a21fcd91912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
