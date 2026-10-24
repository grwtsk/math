# ker_algebraMap_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ce8a05d-2f0d-eedd-99fc-e42816fcae36",
  "kind": "theorem",
  "lexical_name": "ker_algebraMap_eq_bot",
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
  "slug": "ker-algebramap-eq-bot--10889097192419fbd2c45819",
  "source": {
    "blob": "8874e33155d70a350e061360fa6f273f1633d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 386,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd9ecbef191fbf4415280f5edad044c1b1ecd7ad63dd5a4353ecc2baa0172653b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10889097192419fbd2c4581932ebc91b4405e928b9f6fe6ee61ce4366beb9333",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd9ecbef191fbf4415280f5edad044c1b1ecd7ad63dd5a4353ecc2baa0172653b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ce8a05d-2f0d-eedd-99fc-e42816fcae36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_algebraMap_eq_bot : RingHom.ker (algebraMap (𝓞 K) (𝓞 L)) = ⊥ :=
  (RingHom.ker_eq_bot_iff_eq_zero (algebraMap (𝓞 K) (𝓞 L))).mpr <| fun x hx => by
  have h : (algebraMap K L) x = (algebraMap (𝓞 K) (𝓞 L)) x := rfl
  simp only [hx, map_zero, map_eq_zero, RingOfIntegers.coe_eq_zero_iff] at h
  exact h

/-- The algebraMap between ring of integers is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd9ecbef191fbf4415280f5edad044c1b1ecd7ad63dd5a4353ecc2baa0172653b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd9ecbef191fbf4415280f5edad044c1b1ecd7ad63dd5a4353ecc2baa0172653b.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8874e33155d70a350e061360fa6f273f1633d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
