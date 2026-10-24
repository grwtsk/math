# exact_iff_component_agreement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43b13494-a78b-d683-b9c9-3351c596e136",
  "kind": "theorem",
  "lexical_name": "exact_iff_component_agreement",
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
  "slug": "exact-iff-component-agreement--21705953c0b880bf38d1affa",
  "source": {
    "blob": "5eca89497c2bd31b653bf4cdc79026581b676288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21705953c0b880bf38d1affa465a1dbeb73ad92ed6671ca9e0b80287926b019a",
  "verification": {
    "reference": "docs/verification/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b13494-a78b-d683-b9c9-3351c596e136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_iff_component_agreement (a : C1) :
    (∃ b : C0, differential b = a) ↔ a 0 = a 1 := by
  constructor
  · rintro ⟨b, hb⟩
    rw [← hb]
    rfl
  · intro h
    refine ⟨gauge a, ?_⟩
    ext i
    fin_cases i <;> simp [differential, gauge, h] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eca89497c2bd31b653bf4cdc79026581b676288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
