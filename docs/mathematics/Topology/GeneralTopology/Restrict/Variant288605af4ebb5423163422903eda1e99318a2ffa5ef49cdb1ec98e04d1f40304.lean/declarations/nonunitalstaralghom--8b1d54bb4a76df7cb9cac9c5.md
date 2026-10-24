# nonUnitalStarAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c51f4efc2dfb3db3d927bd2267b0bd0a0c59d4124d22b8ed3678c7a27a428c88",
  "kind": "def",
  "lexical_name": "nonUnitalStarAlgHom",
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
  "slug": "nonunitalstaralghom--8b1d54bb4a76df7cb9cac9c5",
  "source": {
    "blob": "9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 230,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b1d54bb4a76df7cb9cac9c5ff6ad1ff54f03b7f028c9d18bbca36f2cf6fdb35",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c51f4efc2dfb3db3d927bd2267b0bd0a0c59d4124d22b8ed3678c7a27a428c88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonUnitalStarAlgHom {R : Type u} {S : Type v} {A : Type w} [Semifield R]
    [StarRing R] [TopologicalSpace R] [IsTopologicalSemiring R] [ContinuousStar R] [Field S]
    [StarRing S] [TopologicalSpace S] [IsTopologicalRing S] [ContinuousStar S] [NonUnitalRing A]
    [StarRing A] [Algebra R S] [Module R A] [Module S A] [IsScalarTower S A A] [SMulCommClass S A A]
    [IsScalarTower R S A] [StarModule R S] [ContinuousSMul R S] {a : A}
    (φ : C(σₙ S a, S)₀ →⋆ₙₐ[S] A) {f : C(S, R)} (h : QuasispectrumRestricts a f) :
    C(σₙ R a, R)₀ →⋆ₙₐ[R] A :=
  (φ.restrictScalars R).comp <|
    (nonUnitalStarAlgHom_postcomp (σₙ S a) (StarAlgHom.ofId R S).toNonUnitalStarAlgHom
        (algebraMapCLM R S).continuous)
      |>.comp <| nonUnitalStarAlgHom_precomp R
        ⟨⟨Subtype.map f h.subset_preimage, (map_continuous f).subtype_map
          fun x (hx : x ∈ σₙ S a) => h.subset_preimage hx⟩, Subtype.ext h.map_zero⟩

variable {R S A : Type*} {p q : A → Prop}
variable [Semifield R] [StarRing R] [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R]
variable [Field S] [StarRing S] [MetricSpace S] [IsTopologicalRing S] [ContinuousStar S]
variable [NonUnitalRing A] [StarRing A] [Module S A] [IsScalarTower S A A]
variable [SMulCommClass S A A]
variable [Algebra R S] [Module R A] [IsScalarTower R S A] [StarModule R S] [ContinuousSMul R S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
