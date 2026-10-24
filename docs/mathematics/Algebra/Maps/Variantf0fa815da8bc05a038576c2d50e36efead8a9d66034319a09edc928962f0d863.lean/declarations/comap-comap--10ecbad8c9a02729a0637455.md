# comap_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47dbe4b1-38d1-7cc3-549c-4be2be7f3126",
  "kind": "lemma",
  "lexical_name": "comap_comap",
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
  "slug": "comap-comap--10ecbad8c9a02729a0637455",
  "source": {
    "blob": "a42fb61dd867fe411e0390f399693b19fe7fb34c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/Algebra/Maps/Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10ecbad8c9a02729a06374557c395d83e32532e5f0004bc75a79d553f91f612d",
  "verification": {
    "reference": "docs/verification/Algebra/Maps/Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47dbe4b1-38d1-7cc3-549c-4be2be7f3126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_comap : (K.comap g).comap f = K.comap (g.comp f) := rfl

end arbitrary_grading

section canonical_grading

variable {A B C σ τ ω ι : Type*}
  [Semiring A] [Semiring B] [Semiring C]
  [SetLike σ A] [SetLike τ B] [SetLike ω C]
  [AddSubmonoidClass σ A] [AddSubmonoidClass τ B] [AddSubmonoidClass ω C]
  [DecidableEq ι] [AddCommMonoid ι] [PartialOrder ι] [CanonicallyOrderedAdd ι]
  {𝒜 : ι → σ} {ℬ : ι → τ} {𝒞 : ι → ω}
  [GradedRing 𝒜] [GradedRing ℬ] [GradedRing 𝒞]
  {f : 𝒜 →+*ᵍ ℬ} {g : ℬ →+*ᵍ 𝒞}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maps/Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maps/Variantf0fa815da8bc05a038576c2d50e36efead8a9d66034319a09edc928962f0d863.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a42fb61dd867fe411e0390f399693b19fe7fb34c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
