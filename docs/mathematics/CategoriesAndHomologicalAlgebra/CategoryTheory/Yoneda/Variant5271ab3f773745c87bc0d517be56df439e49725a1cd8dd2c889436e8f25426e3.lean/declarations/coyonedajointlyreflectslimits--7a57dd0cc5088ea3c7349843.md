# coyonedaJointlyReflectsLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebf48700a3202df815af17056e8a11641355b5f35f0bed1f8075a834e9db7238",
  "kind": "def",
  "lexical_name": "coyonedaJointlyReflectsLimits",
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
  "slug": "coyonedajointlyreflectslimits--7a57dd0cc5088ea3c7349843",
  "source": {
    "blob": "74fb3e5e50c2ed66494af5566287043540abdea7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a57dd0cc5088ea3c73498432adfe9562bbd89d5d367bd886826eca1ef87db5c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebf48700a3202df815af17056e8a11641355b5f35f0bed1f8075a834e9db7238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coyonedaJointlyReflectsLimits (F : J ⥤ C) (c : Cone F)
    (hc : ∀ X : Cᵒᵖ, IsLimit ((coyoneda.obj X).mapCone c)) : IsLimit c where
  lift s := (hc (op s.pt)).lift ((coyoneda.obj (op s.pt)).mapCone s) (𝟙 _)
  fac s j := by simpa using congr_fun ((hc (op s.pt)).fac
    ((coyoneda.obj (op s.pt)).mapCone s) j) (𝟙 _)
  uniq s m hm := by
    apply (Types.isLimitEquivSections (hc (op s.pt))).injective
    ext j
    dsimp [Types.isLimitEquivSections, Types.sectionOfCone]
    have eq := congr_fun ((hc (op s.pt)).fac ((coyoneda.obj (op s.pt)).mapCone s) j) (𝟙 _)
    dsimp at eq
    rw [eq, Category.id_comp, ← hm]

/-- A cone is limit iff it is so after the application of `coyoneda.obj X` for all `X : Cᵒᵖ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74fb3e5e50c2ed66494af5566287043540abdea7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
