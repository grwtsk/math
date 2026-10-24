# submodule_eq_sSup_le_nonzero_spans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0cbed06-489b-4d19-22c3-9a53512b425d",
  "kind": "theorem",
  "lexical_name": "submodule_eq_sSup_le_nonzero_spans",
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
  "slug": "submodule-eq-ssup-le-nonzero-spans--cf9bca68b41130d5c9558112",
  "source": {
    "blob": "3f92280d5936b02750358be10db05af1822786fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 694,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf9bca68b41130d5c95581122d71896c4c956950c2435044851b07131a36a857",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0cbed06-489b-4d19-22c3-9a53512b425d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submodule_eq_sSup_le_nonzero_spans (p : Submodule R M) :
    p = sSup { T : Submodule R M | ∃ (m : M) (_ : m ∈ p) (_ : m ≠ 0), T = span R {m} } := by
  let S := { T : Submodule R M | ∃ (m : M) (_ : m ∈ p) (_ : m ≠ 0), T = span R {m} }
  apply le_antisymm
  · intro m hm
    by_cases h : m = 0
    · rw [h]
      simp
    · exact @le_sSup _ _ S _ ⟨m, ⟨hm, ⟨h, rfl⟩⟩⟩ m (mem_span_singleton_self m)
  · rw [sSup_le_iff]
    rintro S ⟨_, ⟨_, ⟨_, rfl⟩⟩⟩
    rwa [span_singleton_le_iff_mem]
#align submodule.submodule_eq_Sup_le_nonzero_spans Submodule.submodule_eq_sSup_le_nonzero_spans

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f92280d5936b02750358be10db05af1822786fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
