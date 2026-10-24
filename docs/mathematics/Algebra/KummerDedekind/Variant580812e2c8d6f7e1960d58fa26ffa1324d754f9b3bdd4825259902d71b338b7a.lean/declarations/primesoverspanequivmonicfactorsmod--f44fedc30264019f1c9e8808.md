# primesOverSpanEquivMonicFactorsMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df57eb638a94bb097891c3543846578601f3d1965d5c72a49f3aedceb7be06b1",
  "kind": "def",
  "lexical_name": "primesOverSpanEquivMonicFactorsMod",
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
  "slug": "primesoverspanequivmonicfactorsmod--f44fedc30264019f1c9e8808",
  "source": {
    "blob": "b80795e016a90af268cd2e16d7b0afb750149ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 177,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f44fedc30264019f1c9e880821b1dd83495c75290436b9ce6fd6581e9e92cd46",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df57eb638a94bb097891c3543846578601f3d1965d5c72a49f3aedceb7be06b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primesOverSpanEquivMonicFactorsMod (hp : ¬ p ∣ exponent θ) :
    primesOver (span {(p : ℤ)}) (𝓞 K) ≃ monicFactorsMod θ p :=
  have h : span {(p : ℤ)} ≠ ⊥ := by simp [NeZero.ne p]
  ((Set.equivOfEq (by ext; simp [mem_primesOver_iff_mem_normalizedFactors _ h])).trans
    (normalizedFactorsMapEquivNormalizedFactorsMinPolyMk
    (Int.ideal_span_isMaximal_of_prime p) h
      (not_dvd_exponent_iff.mp hp).eq_top θ.isIntegral)).trans <|
        (primesOverSpanEquivMonicFactorsModAux _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b80795e016a90af268cd2e16d7b0afb750149ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
