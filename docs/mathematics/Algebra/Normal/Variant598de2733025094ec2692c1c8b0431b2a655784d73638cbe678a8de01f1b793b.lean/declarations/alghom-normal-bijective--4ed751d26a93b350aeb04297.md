# AlgHom.normal_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bded302b-ef51-7d45-ed6d-22f9fb43dcb9",
  "kind": "theorem",
  "lexical_name": "AlgHom.normal_bijective",
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
  "slug": "alghom-normal-bijective--4ed751d26a93b350aeb04297",
  "source": {
    "blob": "d04a469364b8ad152f56d6f0a411df3dad30eda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 119,
    "path": "GRWTSK/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ed751d26a93b350aeb04297093e6d7b88ecdaab537ede021352e5ac2ec29cd5",
  "verification": {
    "reference": "docs/verification/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bded302b-ef51-7d45-ed6d-22f9fb43dcb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgHom.normal_bijective [h : Normal F E] (ϕ : E →ₐ[F] K) : Function.Bijective ϕ :=
  ⟨ϕ.toRingHom.injective, fun x => by
    letI : Algebra E K := ϕ.toRingHom.toAlgebra
    obtain ⟨h1, h2⟩ := h.out (algebraMap K E x)
    cases'
      minpoly.mem_range_of_degree_eq_one E x
        (h2.def.resolve_left (minpoly.ne_zero h1)
          (minpoly.irreducible
            (isIntegral_of_isScalarTower
              ((isIntegral_algebraMap_iff (algebraMap K E).injective).mp h1)))
          (minpoly.dvd E x
            ((algebraMap K E).injective
              (by
                rw [RingHom.map_zero, aeval_map_algebraMap, ← aeval_algebraMap_apply]
                exact minpoly.aeval F (algebraMap K E x))))) with
      y hy
    exact ⟨y, hy⟩⟩
#align alg_hom.normal_bijective AlgHom.normal_bijective

-- Porting note: `[Field F] [Field E] [Algebra F E]` added by hand.
variable {F} {E} {E' : Type*} [Field F] [Field E] [Algebra F E] [Field E'] [Algebra F E']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d04a469364b8ad152f56d6f0a411df3dad30eda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
