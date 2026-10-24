# isLocalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c56b374-5b9b-3b5e-120a-3e6acaaa7c25",
  "kind": "theorem",
  "lexical_name": "isLocalRing",
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
  "slug": "islocalring--24c7a9342c69f8fba499f02f",
  "source": {
    "blob": "49bf76d2933f66199b49c6b2ace6278eb3f4481a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 387,
    "path": "GRWTSK/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24c7a9342c69f8fba499f02f6d47f10f003e6e1aaac1dd87a57db0c375df0f18",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c56b374-5b9b-3b5e-120a-3e6acaaa7c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalRing (hc : IsLimit c) (j : J) [IsLocalRing (F.obj j)]
    (hj : ∀ (x : c.pt), IsUnit (c.π.app j x) → ∀ (i : J), ∃ (k : J) (f : i ⟶ k) (g : j ⟶ k),
      IsLocalHom (F.map f).hom ∧ F.map f (c.π.app i x) = F.map g (c.π.app j x)) :
    IsLocalRing c.pt := by
  have := π_isLocalHom F hc j hj
  apply RingHom.domain_isLocalRing (c.π.app j).hom

end Limits

section Equalizer

variable {A B : CommRingCat.{u}} (f g : A ⟶ B)

/-- The equalizer in `CommRingCat` is the equalizer as sets. This is the equalizer fork. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variantef67f8f7b6424861d3494c74f8a0098bb2b36597ccee06e4dd8f4956885322da.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49bf76d2933f66199b49c6b2ace6278eb3f4481a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
