# idealSetEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ae5b71b1b9ef0a0c3e45b480803c18de42a5b4d6f0c23ab0c351812ee90ee39",
  "kind": "def",
  "lexical_name": "idealSetEquiv",
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
  "slug": "idealsetequiv--96779a7cb96e43180cf1f94c",
  "source": {
    "blob": "c73dc1f4511bc61f0b68dac5fd12e97f4aa19c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 510,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96779a7cb96e43180cf1f94c82ecbdc5790bfad4c3fb1f165eb1a0c994afc91d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ae5b71b1b9ef0a0c3e45b480803c18de42a5b4d6f0c23ab0c351812ee90ee39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idealSetEquiv : idealSet K J ≃
    {a : integerSet K | (preimageOfMemIntegerSet a : 𝓞 K) ∈ (J : Set (𝓞 K))} :=
  Equiv.ofBijective (fun a ↦ ⟨idealSetMap K J a, preimage_of_IdealSetMap K J a⟩)
    ⟨fun _ _ h ↦ (by
        simp_rw [Subtype.ext_iff_val, idealSetMap_apply] at h
        rwa [Subtype.ext_iff_val]),
    fun ⟨a, ha₂⟩ ↦ ⟨⟨a.val, mem_idealSet.mpr ⟨a.prop.1,
        ⟨preimageOfMemIntegerSet a, ha₂, mixedEmbedding_preimageOfMemIntegerSet a⟩⟩⟩, rfl⟩⟩

variable {K J}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c73dc1f4511bc61f0b68dac5fd12e97f4aa19c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
