# isSemisimpleModule_iff_exists_linearEquiv_dfinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c660ebdc-5fa8-0f39-ac85-97110e8e0aaf",
  "kind": "theorem",
  "lexical_name": "isSemisimpleModule_iff_exists_linearEquiv_dfinsupp",
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
  "slug": "issemisimplemodule-iff-exists-linearequiv-dfinsupp--75a5fa3661b83599104bcc58",
  "source": {
    "blob": "a66ac3b32ed3beddbf54fc818e5d1f64f8598f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 393,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75a5fa3661b83599104bcc586c6d3ab172f70c9e84ed870097044a2d0cdd5618",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c660ebdc-5fa8-0f39-ac85-97110e8e0aaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSemisimpleModule_iff_exists_linearEquiv_dfinsupp : IsSemisimpleModule R M ↔
    ∃ (s : Set (Submodule R M)) (_ : M ≃ₗ[R] Π₀ m : s, m.1), ∀ m : s, IsSimpleModule R m.1 := by
  refine ⟨fun _ ↦ ?_, fun ⟨s, e, h⟩ ↦ .congr e⟩
  have ⟨s, e, h⟩ := IsSemisimpleModule.exists_linearEquiv_dfinsupp R M
  exact ⟨s, e, h.2⟩

variable (R M) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb9cfacdaea92fc121e23d23224fd7affbc0d60a81b9fff6127439a89c1b7762.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a66ac3b32ed3beddbf54fc818e5d1f64f8598f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
