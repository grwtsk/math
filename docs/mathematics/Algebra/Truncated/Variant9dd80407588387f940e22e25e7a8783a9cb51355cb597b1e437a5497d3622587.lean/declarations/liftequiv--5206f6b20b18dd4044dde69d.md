# liftEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:163c2f9f32b69de208f94a66ba41f4b19ddfa6f43c400381f0a1f274f71333ae",
  "kind": "def",
  "lexical_name": "liftEquiv",
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
  "slug": "liftequiv--5206f6b20b18dd4044dde69d",
  "source": {
    "blob": "36361b8a179cf66013b34bf2d6f357b932ef9808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 467,
    "path": "GRWTSK/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5206f6b20b18dd4044dde69d5d3cbb96775de26d69eeca7d9f1c8da89ee47633",
  "verification": {
    "reference": "docs/verification/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:163c2f9f32b69de208f94a66ba41f4b19ddfa6f43c400381f0a1f274f71333ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftEquiv : { f : ∀ k, S →+* TruncatedWittVector p k R // ∀ (k₁ k₂) (hk : k₁ ≤ k₂),
    (TruncatedWittVector.truncate hk).comp (f k₂) = f k₁ } ≃ (S →+* 𝕎 R) where
  toFun f := lift f.1 f.2
  invFun g :=
    ⟨fun k => (truncate k).comp g, by
      intro _ _ h
      simp only [← RingHom.comp_assoc, truncate_comp_wittVector_truncate]⟩
  left_inv := by rintro ⟨f, hf⟩; simp only [truncate_comp_lift]
  right_inv _ := lift_unique _ _ fun _ => rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36361b8a179cf66013b34bf2d6f357b932ef9808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
