# units_smul_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73ca8fd0-8151-cbd6-bc24-8467a22ebe6f",
  "kind": "theorem",
  "lexical_name": "units_smul_span_eq_top",
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
  "slug": "units-smul-span-eq-top--8759e16f08419d9959a00518",
  "source": {
    "blob": "41d2abcefab90b5f24162886d18f0ede63aac3d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8759e16f08419d9959a005182ccdb8e4b88be9e13676a5e162949463dec5073b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ca8fd0-8151-cbd6-bc24-8467a22ebe6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem units_smul_span_eq_top {v : ι → M} (hv : Submodule.span R (Set.range v) = ⊤) {w : ι → Rˣ} :
    Submodule.span R (Set.range (w • v)) = ⊤ :=
  groupSMul_span_eq_top hv

/-- Given a basis `v` and a map `w` such that for all `i`, `w i` is a unit, `unitsSMul`
provides the basis corresponding to `w • v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41d2abcefab90b5f24162886d18f0ede63aac3d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
