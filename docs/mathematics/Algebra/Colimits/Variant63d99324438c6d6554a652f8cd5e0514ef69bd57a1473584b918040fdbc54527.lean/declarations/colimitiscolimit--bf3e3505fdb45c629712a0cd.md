# colimitIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:825e0230bad4b17e105ddf9566b901be20eafe140131cb17aed3db4f3023d8ab",
  "kind": "def",
  "lexical_name": "colimitIsColimit",
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
  "slug": "colimitiscolimit--bf3e3505fdb45c629712a0cd",
  "source": {
    "blob": "30f936592a27d9b57d14a2289d7a41e81ca12f94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 317,
    "path": "GRWTSK/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf3e3505fdb45c629712a0cdbab3a1d962275e8738ea1a720a02a62b703518a5",
  "verification": {
    "reference": "docs/verification/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:825e0230bad4b17e105ddf9566b901be20eafe140131cb17aed3db4f3023d8ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitIsColimit : IsColimit (colimitCocone F) where
  desc s := descMorphism F s
  uniq s m w := RingHom.ext fun x => by
    change (colimitCocone F).pt →+* s.pt at m
    refine Quot.inductionOn x ?_
    intro x
    induction x with
    | zero => erw [quot_zero, map_zero (f := m), (descMorphism F s).map_zero]
    | one => erw [quot_one, map_one (f := m), (descMorphism F s).map_one]
    | neg x ih => erw [quot_neg, map_neg (f := m), (descMorphism F s).map_neg, ih]
    | of j x =>
      exact congr_fun (congr_arg (fun f : F.obj j ⟶ s.pt => (f : F.obj j → s.pt)) (w j)) x
    | add x y ih_x ih_y => erw [quot_add, map_add (f := m), (descMorphism F s).map_add, ih_x, ih_y]
    | mul x y ih_x ih_y => erw [quot_mul, map_mul (f := m), (descMorphism F s).map_mul, ih_x, ih_y]
#align CommRing.colimits.colimit_is_colimit CommRingCat.Colimits.colimitIsColimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Colimits/Variant63d99324438c6d6554a652f8cd5e0514ef69bd57a1473584b918040fdbc54527.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f936592a27d9b57d14a2289d7a41e81ca12f94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
