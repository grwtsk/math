# equitableOn_iff_exists_eq_eq_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05764757-c7b4-489c-dc97-21f71c4ed2e9",
  "kind": "theorem",
  "lexical_name": "equitableOn_iff_exists_eq_eq_add_one",
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
  "slug": "equitableon-iff-exists-eq-eq-add-one--ae629a6ce883acd05f05dd96",
  "source": {
    "blob": "abd08c138f935dcd139223f69ada4d9a694cbeed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae629a6ce883acd05f05dd96ecc602b95729d6e23857a335bef519927858243c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05764757-c7b4-489c-dc97-21f71c4ed2e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equitableOn_iff_exists_eq_eq_add_one {s : Set α} {f : α → ℕ} :
    s.EquitableOn f ↔ ∃ b, ∀ a ∈ s, f a = b ∨ f a = b + 1 := by
  simp_rw [equitableOn_iff_exists_le_le_add_one, Nat.le_and_le_add_one_iff]

section LinearOrder
variable [LinearOrder β] [Add β] [One β] {s : Set α} {f : α → β}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd08c138f935dcd139223f69ada4d9a694cbeed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
