# ZModXQuotSpanEquivQuotSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee37254766ea4050e303958a91243579e5dfdbd2d29deb150531c449c2834827",
  "kind": "def",
  "lexical_name": "ZModXQuotSpanEquivQuotSpan",
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
  "slug": "zmodxquotspanequivquotspan--63a4dcfea428baf65b906b15",
  "source": {
    "blob": "b80795e016a90af268cd2e16d7b0afb750149ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63a4dcfea428baf65b906b15a1797d95b1e21cae3f2d2a72a7fcbc917b022776",
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

Occurrence: `declaration:ee37254766ea4050e303958a91243579e5dfdbd2d29deb150531c449c2834827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ZModXQuotSpanEquivQuotSpan (hp : ¬ p ∣ exponent θ) :
    (ZMod p)[X] ⧸ span {map (Int.castRingHom (ZMod p)) (minpoly ℤ θ)} ≃+*
      𝓞 K ⧸ span {(p : 𝓞 K)} :=
  (quotientEquivAlgOfEq ℤ (by simp [Ideal.map_span, Polynomial.map_map])).toRingEquiv.trans
    ((quotientEquiv _ _ (mapEquiv (Int.quotientSpanNatEquivZMod p)) rfl).symm.trans
      ((quotMapEquivQuotQuotMap (not_dvd_exponent_iff.mp hp).eq_top θ.isIntegral).symm.trans
        (quotientEquivAlgOfEq ℤ (by simp [map_span])).toRingEquiv))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b80795e016a90af268cd2e16d7b0afb750149ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
