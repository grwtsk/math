# Away.map_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f933be87-5ac4-8f09-b1e9-30545980eafe",
  "kind": "theorem",
  "lexical_name": "Away.map_map",
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
  "slug": "away-map-map--971b9cffc8c9c8befcc9a963",
  "source": {
    "blob": "1db610140c3810aa209c8759b3fdf996ecd5a3b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 750,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:971b9cffc8c9c8befcc9a963aa5433dad2d423acfff58df3dd66e9b8ba61d829",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f933be87-5ac4-8f09-b1e9-30545980eafe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Away.map_map (f : 𝒜 →+*ᵍ ℬ) (g : ℬ →+*ᵍ 𝒞) (s : A) (x : Away 𝒜 s) :
    Away.map g (f s) (Away.map f s x) = Away.map (g.comp f) s x :=
  HomogeneousLocalization.map_map ..

section AtPrime

variable (f : 𝒜 →+*ᵍ ℬ) (I : Ideal A) [I.IsPrime] (J : Ideal B) [J.IsPrime] (hIJ : I = J.comap f)

-- NB: this is to be consistent with `Localization.localRingHom`. We might change both to
-- `AtPrime.map` one day.
/-- If `f : 𝒜 →+*ᵍ ℬ` is a graded ring homomorphism and `I` is a prime ideal of `A` and
`J` is a prime ideal of `B` and `f⁻¹ J = I` then we have a map `AtPrime 𝒜 I →+* AtPrime ℬ J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db610140c3810aa209c8759b3fdf996ecd5a3b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
