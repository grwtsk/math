# restrictGermPredicate_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae105db8-f0d4-647d-f383-884be4a1f7bc",
  "kind": "theorem",
  "lexical_name": "restrictGermPredicate_congr",
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
  "slug": "restrictgermpredicate-congr--7be630a2fb550b269e2d8277",
  "source": {
    "blob": "0c1007cf008628ae41b8d1987294581706770271",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Germ/Variantcfa3600f4acb082f39841ec5726b530e0001876ee094466b7fa35a87fbf2d1eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7be630a2fb550b269e2d82775c51486471d1d395e9658f635b1c2beb32c2579c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Germ/Variantcfa3600f4acb082f39841ec5726b530e0001876ee094466b7fa35a87fbf2d1eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae105db8-f0d4-647d-f383-884be4a1f7bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictGermPredicate_congr {P : ∀ x : X, Germ (𝓝 x) Y → Prop}
    (hf : RestrictGermPredicate P A x f) (h : ∀ᶠ z in 𝓝ˢ A, g z = f z) :
    RestrictGermPredicate P A x g := by
  intro hx
  apply ((hf hx).and <| (eventually_nhdsSet_iff_forall.mp h x hx).eventually_nhds).mono
  rintro y ⟨hy, h'y⟩
  rwa [Germ.coe_eq.mpr h'y]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Germ/Variantcfa3600f4acb082f39841ec5726b530e0001876ee094466b7fa35a87fbf2d1eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Germ/Variantcfa3600f4acb082f39841ec5726b530e0001876ee094466b7fa35a87fbf2d1eb.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c1007cf008628ae41b8d1987294581706770271` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
