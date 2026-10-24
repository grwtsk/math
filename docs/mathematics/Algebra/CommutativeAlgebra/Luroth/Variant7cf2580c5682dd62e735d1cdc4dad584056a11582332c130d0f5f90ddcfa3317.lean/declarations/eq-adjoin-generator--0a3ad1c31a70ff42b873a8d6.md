# eq_adjoin_generator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdd4fe2e-8525-6ae0-445c-5c09a90e8177",
  "kind": "theorem",
  "lexical_name": "eq_adjoin_generator",
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
  "slug": "eq-adjoin-generator--0a3ad1c31a70ff42b873a8d6",
  "source": {
    "blob": "4567a817b4413394977204cac0a659ea01a08673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 490,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a3ad1c31a70ff42b873a8d63dbc7cfaf18427326df936f372ff78d86f80d5b8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdd4fe2e-8525-6ae0-445c-5c09a90e8177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem eq_adjoin_generator : E = K⟮generator E⟯ := by
  by_cases h : E = ⊥
  · rwa [generator_eq_zero h, adjoin_zero]
  refine le_antisymm (relfinrank_eq_one_iff.mp ?_) adjoin_generator_le
  suffices (φ E).natDegree = m E by
    refine (mul_eq_right₀ ?_).mp <| this ▸ (generator E).finrank_eq_max_natDegree ▸
      φ_natDegree h ▸ relfinrank_mul_finrank_top (adjoin_generator_le (E := E))
    intro H
    exact generator_ne_C h ((eq_C_iff _).mpr (Nat.max_eq_zero_iff.mp H))
  rw [← Φ_natDegree_eq_φ_natDegree h, Φ_natDegree_eq_θ_natDegree h]
  exact le_antisymm (θ_natDegree_le h) (swap_Φ_natDegree_eq_θ_natDegree h ▸ m_le_swap_Φ_natDegree h)

/-- The `K`-algebra equivalence between `K⟮X⟯` and an intermediate field `E` given
by sending `X` to `generator E`. See also `Luroth.eq_adjoin_generator`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4567a817b4413394977204cac0a659ea01a08673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
