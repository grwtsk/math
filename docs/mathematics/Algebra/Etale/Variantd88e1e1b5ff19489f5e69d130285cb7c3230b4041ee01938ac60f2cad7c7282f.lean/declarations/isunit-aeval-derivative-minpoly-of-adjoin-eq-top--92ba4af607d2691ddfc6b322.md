# isUnit_aeval_derivative_minpoly_of_adjoin_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8b9a3b6-e380-7a59-05c3-3ee04b8badcb",
  "kind": "lemma",
  "lexical_name": "isUnit_aeval_derivative_minpoly_of_adjoin_eq_top",
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
  "slug": "isunit-aeval-derivative-minpoly-of-adjoin-eq-top--92ba4af607d2691ddfc6b322",
  "source": {
    "blob": "27a9beb74c866fc617decaaa6abd91a0a54da604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 148,
    "path": "GRWTSK/Algebra/Etale/Variantd88e1e1b5ff19489f5e69d130285cb7c3230b4041ee01938ac60f2cad7c7282f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92ba4af607d2691ddfc6b322e7c9abc5c2bf18fb3aca1765f93477398d6a75ba",
  "verification": {
    "reference": "docs/verification/Algebra/Etale/Variantd88e1e1b5ff19489f5e69d130285cb7c3230b4041ee01938ac60f2cad7c7282f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8b9a3b6-e380-7a59-05c3-3ee04b8badcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_aeval_derivative_minpoly_of_adjoin_eq_top
    [Algebra.Etale R S] {β : S}
    (hadj : Algebra.adjoin R {β} = ⊤) :
    IsUnit (aeval β (minpoly R β).derivative) := by
  apply fun s ↦ (residue_ne_zero_iff_isUnit s).mp
  rw [map_aeval_eq_aeval_map (ψ := residue S) (φ := residue R) rfl,
    ← derivative_map, minpoly_map_residue hadj]
  exact (Algebra.IsSeparable.isSeparable _ _).aeval_derivative_ne_zero (minpoly.aeval _ _)

end IsLocalRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Etale/Variantd88e1e1b5ff19489f5e69d130285cb7c3230b4041ee01938ac60f2cad7c7282f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Etale/Variantd88e1e1b5ff19489f5e69d130285cb7c3230b4041ee01938ac60f2cad7c7282f.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a9beb74c866fc617decaaa6abd91a0a54da604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
