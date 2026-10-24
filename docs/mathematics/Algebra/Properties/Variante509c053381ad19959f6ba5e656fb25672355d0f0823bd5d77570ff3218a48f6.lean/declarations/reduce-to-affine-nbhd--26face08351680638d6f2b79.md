# reduce_to_affine_nbhd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a04f9c38-b082-6926-87d7-360edf7b13df",
  "kind": "theorem",
  "lexical_name": "reduce_to_affine_nbhd",
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
  "slug": "reduce-to-affine-nbhd--26face08351680638d6f2b79",
  "source": {
    "blob": "65f371104934769a2434f4a200f7c7797661fd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 176,
    "path": "GRWTSK/Algebra/Properties/Variante509c053381ad19959f6ba5e656fb25672355d0f0823bd5d77570ff3218a48f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26face08351680638d6f2b79dfb78abe0073a48a26fc14001bd8086a865b791a",
  "verification": {
    "reference": "docs/verification/Algebra/Properties/Variante509c053381ad19959f6ba5e656fb25672355d0f0823bd5d77570ff3218a48f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a04f9c38-b082-6926-87d7-360edf7b13df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_to_affine_nbhd (P : ∀ (X : Scheme) (_ : X), Prop)
    (h₁ : ∀ R x, P (Spec R) x)
    (h₂ : ∀ {X Y} (f : X ⟶ Y) [IsOpenImmersion f] (x : X), P X x → P Y (f x)) :
    ∀ (X : Scheme) (x : X), P X x := by
  intro X x
  obtain ⟨y, e⟩ := X.affineCover.covers x
  convert! h₂ (X.affineCover.f (X.affineCover.idx x)) y _
  · rw [e]
  apply h₁

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Properties/Variante509c053381ad19959f6ba5e656fb25672355d0f0823bd5d77570ff3218a48f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Properties/Variante509c053381ad19959f6ba5e656fb25672355d0f0823bd5d77570ff3218a48f6.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f371104934769a2434f4a200f7c7797661fd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
