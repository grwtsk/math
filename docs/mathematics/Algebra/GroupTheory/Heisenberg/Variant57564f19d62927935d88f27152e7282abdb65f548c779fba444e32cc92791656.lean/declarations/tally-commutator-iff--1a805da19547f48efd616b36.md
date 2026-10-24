# tally_commutator_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bea4dcb6-443c-9843-0388-aad476d3c0a7",
  "kind": "theorem",
  "lexical_name": "tally_commutator_iff",
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
  "slug": "tally-commutator-iff--1a805da19547f48efd616b36",
  "source": {
    "blob": "389a02b4a20336b9d08710c41a3887713ce60037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/Algebra/GroupTheory/Heisenberg/Variant57564f19d62927935d88f27152e7282abdb65f548c779fba444e32cc92791656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a805da19547f48efd616b3613852037ce0e0cd8abdaa22476d6880656daf638",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Heisenberg/Variant57564f19d62927935d88f27152e7282abdb65f548c779fba444e32cc92791656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bea4dcb6-443c-9843-0388-aad476d3c0a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tally_commutator_iff (a b n : ℕ) :
    X a * Y b * (X a)⁻¹ * (Y b)⁻¹ = Z n ↔ a * b = n := by
  rw [commutator_eq_central]
  constructor
  · intro h
    have hv := congrArg (fun u : (Matrix (Fin 3) (Fin 3) ℝ)ˣ => u.val) h
    have he := central_injective hv
    exact_mod_cast he
  · intro h
    have he : (a : ℝ) * b = n := by exact_mod_cast h
    rw [he]

/-- The standard character of the integer center label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Heisenberg/Variant57564f19d62927935d88f27152e7282abdb65f548c779fba444e32cc92791656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Heisenberg/Variant57564f19d62927935d88f27152e7282abdb65f548c779fba444e32cc92791656.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `389a02b4a20336b9d08710c41a3887713ce60037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
