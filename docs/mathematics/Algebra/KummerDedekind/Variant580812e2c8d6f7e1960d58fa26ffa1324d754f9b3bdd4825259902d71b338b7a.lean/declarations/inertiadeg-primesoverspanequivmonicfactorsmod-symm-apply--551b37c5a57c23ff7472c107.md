# inertiaDeg_primesOverSpanEquivMonicFactorsMod_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2806940-1150-da38-5efb-1623ec852e88",
  "kind": "theorem",
  "lexical_name": "inertiaDeg_primesOverSpanEquivMonicFactorsMod_symm_apply",
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
  "slug": "inertiadeg-primesoverspanequivmonicfactorsmod-symm-apply--551b37c5a57c23ff7472c107",
  "source": {
    "blob": "b80795e016a90af268cd2e16d7b0afb750149ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 219,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:551b37c5a57c23ff7472c107b0d2ea64f144930510feac811571192f374bdbb5",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2806940-1150-da38-5efb-1623ec852e88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertiaDeg_primesOverSpanEquivMonicFactorsMod_symm_apply (hp : ¬ p ∣ exponent θ)
    {Q : ℤ[X]} (hQ : Q.map (Int.castRingHom (ZMod p)) ∈ monicFactorsMod θ p) :
    inertiaDeg ((primesOverSpanEquivMonicFactorsMod hp).symm
      ⟨Q.map (Int.castRingHom (ZMod p)), hQ⟩ : Ideal (𝓞 K)) ℤ =
        natDegree (Q.map (Int.castRingHom (ZMod p))) := by
  -- This is needed for `inertiaDeg_algebraMap` below to work
  have : (span {↑p, (aeval θ) Q}).IsMaximal := by
    rw [← Ideal.primesOverSpanEquivMonicFactorsMod_symm_apply_eq_span hp hQ]
    apply Ideal.primesOver.isMaximal
  have := liesOver_primesOverSpanEquivMonicFactorsMod_symm hp hQ
  rw [primesOverSpanEquivMonicFactorsMod_symm_apply_eq_span,
    inertiaDeg_eq_of_isMaximal (span {(p : ℤ)}),
    ← finrank_quotient_span_eq_natDegree]
  refine Algebra.finrank_eq_of_equiv_equiv (Int.quotientSpanNatEquivZMod p) ?_ (by ext; simp)
  exact (ZModXQuotSpanEquivQuotSpanPair hp hQ).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b80795e016a90af268cd2e16d7b0afb750149ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
