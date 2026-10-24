# Away.map_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7fc718214a8af38f308ad3cc88e05103e43b705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 742,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:464ceb61-600a-a119-05ac-a22e82a0e3a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e444d57-ceaa-4c85-a7c2-e5a5fafa70e8",
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
  "slug": "away-map-map--060d6e8ac6acf82f40170a72",
  "source": {
    "blob": "b7fc718214a8af38f308ad3cc88e05103e43b705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 753,
    "line": 742,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:060d6e8ac6acf82f40170a72f0ca9d54e7b0e0ac0d894ef3ebcba0e7efe1514e",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e444d57-ceaa-4c85-a7c2-e5a5fafa70e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–753.

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

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7fc718214a8af38f308ad3cc88e05103e43b705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
