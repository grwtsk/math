# pointGrothendieckTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72bb13b953e2bd2e47b44039034f8e19a332aa54181f2a0309eb7543d4cb61e3",
  "kind": "def",
  "lexical_name": "pointGrothendieckTopology",
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
  "slug": "pointgrothendiecktopology--5c15ea066cecbb3b32888935",
  "source": {
    "blob": "043788f8a380a5b048d1d6a9339f9d7ced2e4761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Points/Variantb8ba0a1409bf8d35ad5c9c33cf503a20558c5c5f0d70d5fcf0bba3bc2e242b03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c15ea066cecbb3b32888935dbb30993095fd8097806622bafc124560c796c32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Points/Variantb8ba0a1409bf8d35ad5c9c33cf503a20558c5c5f0d70d5fcf0bba3bc2e242b03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72bb13b953e2bd2e47b44039034f8e19a332aa54181f2a0309eb7543d4cb61e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointGrothendieckTopology : Point.{u} (grothendieckTopology X) where
  fiber.obj U := ULift.{u} (PLift (x ∈ U))
  fiber.map f := ↾fun h ↦ ⟨⟨leOfHom f h.down.down⟩⟩
  isCofiltered :=
    { nonempty := ⟨.mk (obj := ⊤) ⟨⟨by simp⟩⟩⟩
      cone_objs U V := by
        induction U with | @mk U hU
        induction V with | @mk V hV
        obtain ⟨⟨hU⟩⟩ := hU
        obtain ⟨⟨hV⟩⟩ := hV
        exact ⟨.mk (obj := U ⊓ V) ⟨⟨hU, hV⟩⟩,
          Functor.Elements.homMk (homOfLE (by simp)) rfl,
          Functor.Elements.homMk (homOfLE (by simp)) rfl, by tauto⟩
      cone_maps _ _ _ _ := ⟨_, 𝟙 _, rfl⟩ }
  initiallySmall := initiallySmall_of_essentiallySmall _
  jointly_surjective := by
    rintro U R hR ⟨⟨hU⟩⟩
    obtain ⟨V, f, hf, hV⟩ := hR x hU
    exact ⟨_, _, hf, ⟨⟨hV⟩⟩, rfl⟩

variable (X) in
/-- When `X` is a topological space, this is the obvious conservative family of
points on the site `(Opens X, Opens.grothendieckTopology X)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Points/Variantb8ba0a1409bf8d35ad5c9c33cf503a20558c5c5f0d70d5fcf0bba3bc2e242b03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Points/Variantb8ba0a1409bf8d35ad5c9c33cf503a20558c5c5f0d70d5fcf0bba3bc2e242b03.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `043788f8a380a5b048d1d6a9339f9d7ced2e4761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
