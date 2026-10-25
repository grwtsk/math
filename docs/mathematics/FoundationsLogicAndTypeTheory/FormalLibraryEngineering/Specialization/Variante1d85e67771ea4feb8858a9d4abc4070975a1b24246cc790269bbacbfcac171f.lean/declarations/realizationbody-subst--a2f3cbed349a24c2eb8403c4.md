# realizationBody_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06a9d906-bbbe-0a6c-1ff9-cf03eec77588",
  "kind": "theorem",
  "lexical_name": "realizationBody_subst",
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
  "slug": "realizationbody-subst--a2f3cbed349a24c2eb8403c4",
  "source": {
    "blob": "865305ad13773a1bfae279e1cdb9a1aa4fd17a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2292,
    "line": 2285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f3cbed349a24c2eb8403c45334d78f9591fd83de939a67f1ed1486dfd5d936",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06a9d906-bbbe-0a6c-1ff9-cf03eec77588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2285–2292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realizationBody_subst (U : DataWrapper S true) (L : LogicCode S) (T c : Expr S) (Q :
  Fin 7 → Expr S) (σ : Nat → Expr S) :
    (R.realizationBody U L T c Q).subst (Expr.liftSub σ) =
      (R.subst σ).realizationBody (U.subst σ) (L.subst σ) (T.subst σ) (c.subst σ) (fun t => (Q
        t).subst (Expr.liftSub σ)) := by
  simp only [realizationBody,LogicCode.choices_subst,LogicCode.subst_rename,
    LogicCode.rename_subst,Expr.compose_subst,markBody_subst,decodeMap_subst]
  rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean#L2285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865305ad13773a1bfae279e1cdb9a1aa4fd17a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
