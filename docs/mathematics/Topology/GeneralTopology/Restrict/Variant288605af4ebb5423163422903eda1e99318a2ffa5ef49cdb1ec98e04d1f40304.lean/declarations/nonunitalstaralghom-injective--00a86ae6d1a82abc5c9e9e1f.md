# nonUnitalStarAlgHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71bcec08-d5ec-5055-c0d6-eaf3f55fea25",
  "kind": "lemma",
  "lexical_name": "nonUnitalStarAlgHom_injective",
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
  "slug": "nonunitalstaralghom-injective--00a86ae6d1a82abc5c9e9e1f",
  "source": {
    "blob": "9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 260,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00a86ae6d1a82abc5c9e9e1fca1691b5069c124735735e86c19e20d593234396",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71bcec08-d5ec-5055-c0d6-eaf3f55fea25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonUnitalStarAlgHom_injective {a : A} {φ : C(σₙ S a, S)₀ →⋆ₙₐ[S] A}
    (hφ : Function.Injective φ) {f : C(S, R)} (h : QuasispectrumRestricts a f)
    (halg : Function.Injective (algebraMap R S)) :
    Function.Injective (h.nonUnitalStarAlgHom φ) :=
  have : h.homeomorph.symm 0 = 0 := Subtype.ext (map_zero <| algebraMap _ _)
  hφ.comp <|
    (postcomp_injective ⟨⟨(StarAlgHom.ofId R S), (algebraMapCLM R S).continuous⟩, _⟩ halg).comp <|
    (UniformEquiv.arrowCongrLeft₀ h.homeomorph.symm this |>.injective)

variable [TopologicalSpace A]

section Generic

variable [NonUnitalContinuousFunctionalCalculus S A q]

open ContinuousMapZero in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
