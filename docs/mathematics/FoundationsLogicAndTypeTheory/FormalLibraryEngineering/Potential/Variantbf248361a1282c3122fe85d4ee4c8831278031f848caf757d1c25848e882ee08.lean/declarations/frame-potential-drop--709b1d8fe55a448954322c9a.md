# frame_potential_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dea9f63c-ed1e-0cd5-7c1c-cebd23d394da",
  "kind": "theorem",
  "lexical_name": "frame_potential_drop",
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
  "slug": "frame-potential-drop--709b1d8fe55a448954322c9a",
  "source": {
    "blob": "0096b9b806212287bdcfa503838428ac60260fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 527,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:709b1d8fe55a448954322c9af59bcc96c045ef13d59736ded5de944d6eec2d59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dea9f63c-ed1e-0cd5-7c1c-cebd23d394da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frame_potential_drop (hw : SystemWeaklyNormalizing P)
    (hno : ¬ ForbiddenConfiguration P C)
    (hD : IsComponent (SecondaryEdge P C) D) (hplain : ∀ I ∈ D, PlainLayer P C I)
    (hneg : ∃ I ∈ D, ∃ K ∈ D, SecondaryEdge P C I K true)
    {Γ : List (Expr S)} {A B n : Expr S} {s : S}
    (hT : HasType P Γ (.pi A B) (.sort s)) (hnT : Normal (.pi A B))
    (hn : HasType P Γ n A) (hK : Profile P Γ (.pi A B) ∈ D)
    (hL : Profile P Γ (B.instantiate n) ∈ D) :
    potential P C D Γ (B.instantiate n).normalForm ≤ potential P C D (A :: Γ) B ∧
      potential P C D (A :: Γ) B < potential P C D Γ (.pi A B) := by
  have ha : ∀ X ∈ D, ActiveLayer P C X := fun X hX => (hplain X hX).active
  have hl : ∀ X ∈ D, X ∈ ObservationLayers P C := fun X hX => (ha X hX).layer
  obtain ⟨a, b, c, hA, hB, _, _⟩ := hT.generation_pi
  have htr := Profile.triple hw hT
  have hp := Profile.growth_path hw hB hn.valid _ (TypedSubstitution.single hn)
  have hJ := hD.codomain_interpolation hl htr hK hL hp
  refine ⟨potential_subst_le hw hno hD hplain hneg htr hJ hK hn.valid
    (TypedSubstitution.single hn) (SingleSource.single hw hA) hB hnT.pi_body hJ, ?_⟩
  simp only [potential, if_pos hJ]
  omega

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Potential/Variantbf248361a1282c3122fe85d4ee4c8831278031f848caf757d1c25848e882ee08.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0096b9b806212287bdcfa503838428ac60260fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
