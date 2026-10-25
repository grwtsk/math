# Const.Equiv.beq_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9660fd34-233f-5245-0e0e-4626ee0df072",
  "kind": "theorem",
  "lexical_name": "Const.Equiv.beq_congr",
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
  "slug": "const-equiv-beq-congr--f424f01098ebc88b5581bdc5",
  "source": {
    "blob": "8bae930c838463bf9069302bf784fba454585a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2297,
    "line": 2288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante47c9025a41e57a8f532cab19574b0a2065c303ee6b324c4adbfff1528ab2d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f424f01098ebc88b5581bdc5b262ad36c31373309cf0f0f576aeea30aaf68d2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante47c9025a41e57a8f532cab19574b0a2065c303ee6b324c4adbfff1528ab2d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9660fd34-233f-5245-0e0e-4626ee0df072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2288–2297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Const.Equiv.beq_congr [TransCmp cmp] [BEq β] {m₃ m₄ : Raw α β cmp} (h₁ : m₁.WF) (h₂ : m₂.WF) (h₃ : m₃.WF) (h₄ : m₄.WF) (w₁ : m₁ ~m m₃) (w₂ : m₂ ~m m₄) : (m₁ == m₂) = (m₃ == m₄) :=
  DTreeMap.Raw.Const.Equiv.beq_congr h₁ h₂ h₃ h₄ w₁.1 w₂.1

end

section Diff

variable {t₁ t₂ : Raw α β cmp}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante47c9025a41e57a8f532cab19574b0a2065c303ee6b324c4adbfff1528ab2d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variante47c9025a41e57a8f532cab19574b0a2065c303ee6b324c4adbfff1528ab2d70.lean#L2288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bae930c838463bf9069302bf784fba454585a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
