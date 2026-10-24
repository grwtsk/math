# continuous_of_continuousAt_one₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b7dc167-c7b3-545d-2ce8-e3e146b5cc15",
  "kind": "theorem",
  "lexical_name": "continuous_of_continuousAt_one₂",
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
  "slug": "continuous-of-continuousat-one--aba6008b9b1ccc465fdf0e11",
  "source": {
    "blob": "9a22ad1674e89ee63f70013ff524ece1efc15464",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 752,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6cadde51982250dfa2dbf88a55fd800d681aa078c3337fdd3001644f9ccd1819.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aba6008b9b1ccc465fdf0e11a77178722e299995149f003e16e4441fe88abd3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6cadde51982250dfa2dbf88a55fd800d681aa078c3337fdd3001644f9ccd1819.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b7dc167-c7b3-545d-2ce8-e3e146b5cc15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_of_continuousAt_one₂ {H M : Type*} [CommMonoid M] [TopologicalSpace M]
    [ContinuousMul M] [Group H] [TopologicalSpace H] [IsTopologicalGroup H] (f : G →* H →* M)
    (hf : ContinuousAt (fun x : G × H ↦ f x.1 x.2) (1, 1))
    (hl : ∀ x, ContinuousAt (f x) 1) (hr : ∀ y, ContinuousAt (f · y) 1) :
    Continuous (fun x : G × H ↦ f x.1 x.2) := continuous_iff_continuousAt.2 fun (x, y) => by
  simp only [ContinuousAt, nhds_prod_eq, ← map_mul_left_nhds_one x, ← map_mul_left_nhds_one y,
    prod_map_map_eq, tendsto_map'_iff, Function.comp_def, map_mul, MonoidHom.mul_apply] at *
  refine ((tendsto_const_nhds.mul ((hr y).comp tendsto_fst)).mul
    (((hl x).comp tendsto_snd).mul hf)).mono_right (le_of_eq ?_)
  simp only [map_one, mul_one, MonoidHom.one_apply]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6cadde51982250dfa2dbf88a55fd800d681aa078c3337fdd3001644f9ccd1819.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6cadde51982250dfa2dbf88a55fd800d681aa078c3337fdd3001644f9ccd1819.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a22ad1674e89ee63f70013ff524ece1efc15464` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
