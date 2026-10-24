# valuation_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51b2b353-26fa-1b6e-1402-6602e759ade2",
  "kind": "theorem",
  "lexical_name": "valuation_eq_one_iff",
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
  "slug": "valuation-eq-one-iff--6dd30483eb015e0c8297f47c",
  "source": {
    "blob": "d166e10be6c81bee254371ab1d283e62605f6104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 216,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dd30483eb015e0c8297f47c44c87dfc684b34e7288da9e4102a06568f79c077",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51b2b353-26fa-1b6e-1402-6602e759ade2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_eq_one_iff (a : A) : IsUnit a ↔ A.valuation a = 1 :=
  ⟨fun h => A.valuation_unit h.unit, fun h => by
    have ha : (a : K) ≠ 0
    · intro c
      rw [c, A.valuation.map_zero] at h
      exact zero_ne_one h
    have ha' : (a : K)⁻¹ ∈ A := by rw [← valuation_le_one_iff, map_inv₀, h, inv_one]
    apply isUnit_of_mul_eq_one a ⟨a⁻¹, ha'⟩; ext; field_simp⟩
#align valuation_subring.valuation_eq_one_iff ValuationSubring.valuation_eq_one_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant865f9469a5133a3ebaafc4884b583870e271a15f81649b15db5eec45a36ed2d9.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d166e10be6c81bee254371ab1d283e62605f6104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
