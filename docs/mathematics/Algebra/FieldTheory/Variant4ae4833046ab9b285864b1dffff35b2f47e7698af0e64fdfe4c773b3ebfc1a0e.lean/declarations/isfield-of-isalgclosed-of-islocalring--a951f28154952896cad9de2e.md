# isField_of_isAlgClosed_of_isLocalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:febf55af-4a42-1070-ae6e-3b269136e889",
  "kind": "theorem",
  "lexical_name": "isField_of_isAlgClosed_of_isLocalRing",
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
  "slug": "isfield-of-isalgclosed-of-islocalring--a951f28154952896cad9de2e",
  "source": {
    "blob": "31ef4a50a74def4f464062a9072a2cabc5afefd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a951f28154952896cad9de2e4f3e7fe47c69e3df6fd6080d3ff91e0139a22a82",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:febf55af-4a42-1070-ae6e-3b269136e889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isField_of_isAlgClosed_of_isLocalRing
    [IsAlgClosed K] [IsLocalRing A] : IsField A := by
  rw [IsLocalRing.isField_iff_maximalIdeal_eq, eq_bot_iff]
  intro x hx
  obtain ⟨x, rfl⟩ := (bijective_of_isAlgClosed_of_isLocalRing K A).surjective x
  show _ = 0
  rw [← (algebraMap K A).map_zero]
  by_contra hx'
  exact hx ((isUnit_iff_ne_zero.mpr
    (fun e ↦ hx' ((algebraMap K A).congr_arg e))).map (algebraMap K A))

@[deprecated (since := "2024-11-12")]
alias bijective_of_isAlgClosed_of_localRing := bijective_of_isAlgClosed_of_isLocalRing

@[deprecated (since := "2024-11-12")]
alias isField_of_isAlgClosed_of_localRing := isField_of_isAlgClosed_of_isLocalRing

include K in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ef4a50a74def4f464062a9072a2cabc5afefd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
