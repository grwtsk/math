# eq_bot_of_comp_quotientMk_eq_sigmaSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34d4a814-83fe-3c7b-f317-a707c16916f2",
  "kind": "lemma",
  "lexical_name": "eq_bot_of_comp_quotientMk_eq_sigmaSpec",
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
  "slug": "eq-bot-of-comp-quotientmk-eq-sigmaspec--394aec9369b42df2003cde25",
  "source": {
    "blob": "9e1bf693e98ab823106ec19179a3ef4f9eb04470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:394aec9369b42df2003cde252b4835afbdab20b74fd4c7ed705ce60d1ad459af",
  "verification": {
    "reference": "docs/verification/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34d4a814-83fe-3c7b-f317-a707c16916f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_bot_of_comp_quotientMk_eq_sigmaSpec (I : Ideal (Π i, R i))
    (f : (∐ fun i ↦ Spec (R i)) ⟶ Spec (.of ((Π i, R i) ⧸ I)))
    (hf : f ≫ Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) = sigmaSpec R) :
    I = ⊥ := by
  refine le_bot_iff.mp fun x hx ↦ ?_
  ext i
  simpa [← Category.assoc, Ideal.Quotient.eq_zero_iff_mem.mpr hx] using
    congr((Spec.preimage (Sigma.ι (Spec <| R ·) i ≫ $hf)).hom x).symm

/-- If `V` is a locally closed subscheme of `Spec (Π Rᵢ)` containing `∐ Spec Rᵢ`, then
`V = Spec (Π Rᵢ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PointsPi/Variant5ac8966b2ec102647685c57d2e5b7f8b7ee0e41d57c69c5bbcc40a4ab8b9711b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e1bf693e98ab823106ec19179a3ef4f9eb04470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
