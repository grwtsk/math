# expression_convert_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ccebb43-ac8c-3b54-7760-6841037f55cb",
  "kind": "theorem",
  "lexical_name": "expression_convert_eq",
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
  "slug": "expression-convert-eq--264023ce4df7d17432089dd5",
  "source": {
    "blob": "a6e726c78749d44f68089c5b9fe2fd083816dd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 537,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7caa2c70adb09acf767ba6838759eb318e726a4f4f7bdd7da4d7923f211b7cb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:264023ce4df7d17432089dd5f839ff3e9a2e9e9153f7b9fd9490d9a669561270",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7caa2c70adb09acf767ba6838759eb318e726a4f4f7bdd7da4d7923f211b7cb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ccebb43-ac8c-3b54-7760-6841037f55cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expression_convert_eq {M T N U : Expr S} (hM : HasType P Γ M T)
    (hN : HasType P Γ N U) (hc : Converts M N) :
    (M.subst e.images).normalForm = (N.subst e.images).normalForm :=
  Expr.normalForm_converts ((ContextTower.HasType.subst hM e.typed).weaklyNormalizing hw)
    ((ContextTower.HasType.subst hN e.typed).weaklyNormalizing hw) (hc.subst _)
end Environment

namespace ProductInstance
variable {Ω C hno}
open Classical in
/-- Recover a product instance and its formation data from a typed product expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7caa2c70adb09acf767ba6838759eb318e726a4f4f7bdd7da4d7923f211b7cb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7caa2c70adb09acf767ba6838759eb318e726a4f4f7bdd7da4d7923f211b7cb9.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6e726c78749d44f68089c5b9fe2fd083816dd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
