# not_isLocalRing_of_prod_of_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d0497f7-d22c-f975-a3ae-abeaad34e00d",
  "kind": "theorem",
  "lexical_name": "not_isLocalRing_of_prod_of_nontrivial",
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
  "slug": "not-islocalring-of-prod-of-nontrivial--875dc23127a7a90a096af2bf",
  "source": {
    "blob": "b299a889eec6ef2fb1406600baee6d05b34d190a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:875dc23127a7a90a096af2bf99951f383306e95880e0e2d0915e4b297d81b5e1",
  "verification": {
    "reference": "docs/verification/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d0497f7-d22c-f975-a3ae-abeaad34e00d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isLocalRing_of_prod_of_nontrivial (R₁ R₂ : Type*) [Semiring R₁] [Semiring R₂]
    [Nontrivial R₁] [Nontrivial R₂] : ¬IsLocalRing (R₁ × R₂) :=
  have ha : ¬IsUnit ((1, 0) : R₁ × R₂) :=
    fun h ↦ not_isUnit_zero (M₀ := R₁) (by simpa using h.map (RingHom.snd R₁ R₂))
  have hb : ¬IsUnit ((0, 1) : R₁ × R₂) :=
    fun h ↦ not_isUnit_zero (M₀ := R₂) (by simpa using h.map (RingHom.fst R₁ R₂))
  not_isLocalRing_def ha hb (by simp)

/-- The following conditions are equivalent for a commutative (semi)ring `R`:
    * `R` is not local,
    * the maximal spectrum of `R` is nontrivial,
    * `R` has two distinct maximal ideals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b299a889eec6ef2fb1406600baee6d05b34d190a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
