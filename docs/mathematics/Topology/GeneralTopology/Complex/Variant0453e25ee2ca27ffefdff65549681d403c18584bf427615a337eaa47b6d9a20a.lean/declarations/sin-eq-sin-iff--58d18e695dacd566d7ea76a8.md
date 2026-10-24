# sin_eq_sin_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bbe140c-0509-e269-d62c-7a56d654b1b0",
  "kind": "theorem",
  "lexical_name": "sin_eq_sin_iff",
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
  "slug": "sin-eq-sin-iff--58d18e695dacd566d7ea76a8",
  "source": {
    "blob": "cd3f547b5b6d4f99b4efd0c49772470895d6e9da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58d18e695dacd566d7ea76a86a8b9a88626b01b85469da551875294028c62d3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bbe140c-0509-e269-d62c-7a56d654b1b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_eq_sin_iff {x y : ℂ} :
    sin x = sin y ↔ ∃ k : ℤ, y = 2 * k * π + x ∨ y = (2 * k + 1) * π - x := by
  simp only [← Complex.cos_sub_pi_div_two, cos_eq_cos_iff, sub_eq_iff_eq_add]
  refine exists_congr fun k => or_congr ?_ ?_ <;> refine Eq.congr rfl ?_ <;> simp [field] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant0453e25ee2ca27ffefdff65549681d403c18584bf427615a337eaa47b6d9a20a.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd3f547b5b6d4f99b4efd0c49772470895d6e9da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
