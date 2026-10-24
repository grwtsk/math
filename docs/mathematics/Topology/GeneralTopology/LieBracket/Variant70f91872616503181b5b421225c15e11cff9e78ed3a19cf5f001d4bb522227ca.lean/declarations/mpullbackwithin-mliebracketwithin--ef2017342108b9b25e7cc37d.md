# mpullbackWithin_mlieBracketWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fc4a14b-bb1a-3156-9ce8-07324d9f9760",
  "kind": "lemma",
  "lexical_name": "mpullbackWithin_mlieBracketWithin",
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
  "slug": "mpullbackwithin-mliebracketwithin--ef2017342108b9b25e7cc37d",
  "source": {
    "blob": "47a65c06554bd39024cf3b6ee9e313519c95cab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 779,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef2017342108b9b25e7cc37d1834c835eae91302571423f32347ddefad6cb294",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fc4a14b-bb1a-3156-9ce8-07324d9f9760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mpullbackWithin_mlieBracketWithin
    {f : M → M'} {V W : Π (x : M'), TangentSpace I' x} {x₀ : M} {s : Set M} {t : Set M'}
    (hV : MDiffAt[t] (T% V) (f x₀)) (hW : MDiffAt[t] (T% W) (f x₀))
    (hu : UniqueMDiff[s]) (hf : CMDiffAt[s] n f x₀) (hx₀ : x₀ ∈ s)
    (hn : minSmoothness 𝕜 2 ≤ n)
    (hst : f ⁻¹' t ∈ 𝓝[s] x₀) (h'x₀ : x₀ ∈ closure (interior s)) :
    mpullbackWithin I I' f (mlieBracketWithin I' V W t) s x₀ =
      mlieBracketWithin I (mpullbackWithin I I' f V s) (mpullbackWithin I I' f W s) s x₀ :=
  mpullbackWithin_mlieBracketWithin' hV hW hu hu hf hx₀ hn hst h'x₀ Subset.rfl

/-- The pullback commutes with the Lie bracket of vector fields on manifolds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variant70f91872616503181b5b421225c15e11cff9e78ed3a19cf5f001d4bb522227ca.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47a65c06554bd39024cf3b6ee9e313519c95cab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
