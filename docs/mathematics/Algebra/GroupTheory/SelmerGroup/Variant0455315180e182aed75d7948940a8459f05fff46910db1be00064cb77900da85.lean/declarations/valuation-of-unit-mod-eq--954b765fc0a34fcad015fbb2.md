# valuation_of_unit_mod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72d9717029544425b9a4c63c44b4f47e8c6436c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0455315180e182aed75d7948940a8459f05fff46910db1be00064cb77900da85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4ff29a1-ea31-74c0-db04-66f3cc60e1ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e2f7d35-73de-6791-a96f-7dcaaf9fd65e",
  "kind": "theorem",
  "lexical_name": "valuation_of_unit_mod_eq",
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
  "slug": "valuation-of-unit-mod-eq--954b765fc0a34fcad015fbb2",
  "source": {
    "blob": "72d9717029544425b9a4c63c44b4f47e8c6436c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 148,
    "path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant0455315180e182aed75d7948940a8459f05fff46910db1be00064cb77900da85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:954b765fc0a34fcad015fbb25742a24ad35b0eeca31dbb5a74de483db34c1850",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelmerGroup/Variant0455315180e182aed75d7948940a8459f05fff46910db1be00064cb77900da85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e2f7d35-73de-6791-a96f-7dcaaf9fd65e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_of_unit_mod_eq (n : ℕ) (x : Rˣ) :
    v.valuationOfNeZeroMod n (Units.map (algebraMap R K : R →* K) x : K / n) = 1 := by
  -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
  erw [valuationOfNeZeroMod, MonoidHom.comp_apply, ← QuotientGroup.coe_mk',
    QuotientGroup.map_mk' (G := Kˣ) (N := MonoidHom.range (powMonoidHom n)),
    valuation_of_unit_eq, QuotientGroup.mk_one, map_one]

end HeightOneSpectrum

/-! ### Selmer groups -/


variable {S S' : Set <| HeightOneSpectrum R} {n : ℕ}

/-- The Selmer group `K⟮S, n⟯`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelmerGroup/Variant0455315180e182aed75d7948940a8459f05fff46910db1be00064cb77900da85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant0455315180e182aed75d7948940a8459f05fff46910db1be00064cb77900da85.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72d9717029544425b9a4c63c44b4f47e8c6436c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
