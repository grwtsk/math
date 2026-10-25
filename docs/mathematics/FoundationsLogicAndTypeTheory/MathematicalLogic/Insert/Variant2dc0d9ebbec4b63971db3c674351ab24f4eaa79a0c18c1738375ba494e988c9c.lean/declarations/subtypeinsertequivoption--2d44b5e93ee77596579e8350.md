# subtypeInsertEquivOption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23b9d6dba2b6f3bf4df72ec3440ad1f0742c9af778e843e03f5aa6d200e7d9b3",
  "kind": "def",
  "lexical_name": "subtypeInsertEquivOption",
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
  "slug": "subtypeinsertequivoption--2d44b5e93ee77596579e8350",
  "source": {
    "blob": "16ce5361c4ae3fe2ea15c446bc1e8c7061aa5a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant2dc0d9ebbec4b63971db3c674351ab24f4eaa79a0c18c1738375ba494e988c9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d44b5e93ee77596579e8350149a333fe26edc2a19d2e745c131a93ce358935d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant2dc0d9ebbec4b63971db3c674351ab24f4eaa79a0c18c1738375ba494e988c9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23b9d6dba2b6f3bf4df72ec3440ad1f0742c9af778e843e03f5aa6d200e7d9b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subtypeInsertEquivOption
    [DecidableEq α] {t : Set α} {x : α} (h : x ∉ t) :
    { i // i ∈ insert x t } ≃ Option { i // i ∈ t } where
  toFun y := if h : ↑y = x then none else some ⟨y, (mem_insert_iff.mp y.2).resolve_left h⟩
  invFun y := (y.elim ⟨x, mem_insert _ _⟩) fun z => ⟨z, mem_insert_of_mem _ z.2⟩
  left_inv y := by
    by_cases h : ↑y = x
    · simp only [Subtype.ext_iff, h, Option.elim, dif_pos, Subtype.coe_mk]
    · simp only [h, Option.elim, dif_neg, not_false_iff, Subtype.coe_eta, Subtype.coe_mk]
  right_inv := by
    rintro (_ | y)
    · simp only [Option.elim, dif_pos]
    · have : ↑y ≠ x := by
        rintro ⟨⟩
        exact h y.2
      simp only [this, Option.elim, Subtype.eta, dif_neg, not_false_iff, Subtype.coe_mk]

/-! ### Lemmas about singletons -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant2dc0d9ebbec4b63971db3c674351ab24f4eaa79a0c18c1738375ba494e988c9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant2dc0d9ebbec4b63971db3c674351ab24f4eaa79a0c18c1738375ba494e988c9c.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ce5361c4ae3fe2ea15c446bc1e8c7061aa5a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
