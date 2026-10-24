# uliftYonedaIsoYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f705ea9294cf9fac777ea5ec9e6b536156c182c410668bc1a0fde8a055e01f9d",
  "kind": "def",
  "lexical_name": "uliftYonedaIsoYoneda",
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
  "slug": "uliftyonedaisoyoneda--f0b0e97dc1049bd9feff791b",
  "source": {
    "blob": "2fccbc269e82591453d25580cbba0344b5a92cf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0b0e97dc1049bd9feff791b3bc9b45401b46a2b1ad504377688902b8cb8d53f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f705ea9294cf9fac777ea5ec9e6b536156c182c410668bc1a0fde8a055e01f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uliftYonedaIsoYoneda {C : Type u} [Category.{max w v} C] (J : GrothendieckTopology C)
    [J.Subcanonical] :
    GrothendieckTopology.uliftYoneda.{w} J ≅ J.yoneda :=
  dsimp% NatIso.ofComponents (fun _ => (fullyFaithfulSheafToPresheaf J _).preimageIso
    (NatIso.ofComponents (fun _ ↦ Equiv.ulift.toIso)))

variable [Subcanonical J]

/--
The yoneda embedding into the presheaf category factors through the one
to the sheaf category.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fccbc269e82591453d25580cbba0344b5a92cf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
