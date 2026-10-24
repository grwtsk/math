# noncommPiCoprodEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee2b713474e0ad9f8ece5e2a15dbb55154e2627e4d40e2f7ea3f94f7632dd49a",
  "kind": "def",
  "lexical_name": "noncommPiCoprodEquiv",
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
  "slug": "noncommpicoprodequiv--96331eaeedb0a8b0f6d69f8a",
  "source": {
    "blob": "32297327e2f3da01443bb41cd44052ecc86a2f7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 145,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant88dedd87a6e0f274230e2fb852c1ff67c73e98b039e15048fab14b894c430ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96331eaeedb0a8b0f6d69f8a041ca2124c00eca3d13d8e63364eb9b3f07157c9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommPiCoprod/Variant88dedd87a6e0f274230e2fb852c1ff67c73e98b039e15048fab14b894c430ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee2b713474e0ad9f8ece5e2a15dbb55154e2627e4d40e2f7ea3f94f7632dd49a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def noncommPiCoprodEquiv [DecidableEq ι] :
    { ϕ : ∀ i, N i →* M // Pairwise fun i j => ∀ x y, Commute (ϕ i x) (ϕ j y) } ≃
      ((∀ i, N i) →* M) where
  toFun ϕ := noncommPiCoprod ϕ.1 ϕ.2
  invFun f :=
    ⟨fun i => f.comp (MonoidHom.mulSingle N i), fun _ _ hij x y =>
      Commute.map (Pi.mulSingle_commute hij x y) f⟩
  left_inv ϕ := by
    ext
    simp only [coe_comp, Function.comp_apply, mulSingle_apply, noncommPiCoprod_mulSingle]
  right_inv f := pi_ext fun i x => by
    simp only [noncommPiCoprod_mulSingle, coe_comp, Function.comp_apply, mulSingle_apply]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommPiCoprod/Variant88dedd87a6e0f274230e2fb852c1ff67c73e98b039e15048fab14b894c430ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant88dedd87a6e0f274230e2fb852c1ff67c73e98b039e15048fab14b894c430ae0.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32297327e2f3da01443bb41cd44052ecc86a2f7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
