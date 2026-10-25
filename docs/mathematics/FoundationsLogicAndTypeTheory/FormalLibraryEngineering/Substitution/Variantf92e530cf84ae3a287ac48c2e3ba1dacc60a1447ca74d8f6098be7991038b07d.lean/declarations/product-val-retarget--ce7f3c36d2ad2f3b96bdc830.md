# product_val_retarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ccc3ef8-240e-ccda-0d7c-b6bd1a663268",
  "kind": "theorem",
  "lexical_name": "product_val_retarget",
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
  "slug": "product-val-retarget--ce7f3c36d2ad2f3b96bdc830",
  "source": {
    "blob": "2fbb66912a1a80a00041a163ce8e859aa20dc057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce7f3c36d2ad2f3b96bdc8308b8c426bf0d4c835ae026cdeabe07e91277a28b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ccc3ef8-240e-ccda-0d7c-b6bd1a663268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_val_retarget {D E : Expr S} {a b c : S}
    (h : HasType P Γ (.pi D E) T) (h' : HasType P Γ (.pi D E) U)
    (hd : HasType P Γ D (.sort a)) (hb : HasType P (D :: Γ) E (.sort b))
    (hr : P.rule a b c) (hc : Converts T (.sort c)) (hc' : Converts U (.sort c))
    (ed : Evaluator (hw := hw) Ω C hno Γ D (.sort a))
    (eb : Evaluator (hw := hw) Ω C hno (D :: Γ) E (.sort b))
    (e : Environment (hw := hw) Ω C hno Γ)
    (he : (T.subst e.images).normalForm = (U.subst e.images).normalForm)
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm))
    (hu : ActiveLayer P C (Ω.profile (U.subst e.images).normalForm)) :
    ((product h hd hb hr hc ed eb e).val ha).val = ((product h' hd hb hr hc' ed eb e).val
      hu).val := by
  dsimp only [product]
  split
  · exact withBase_congr Ω C hno he _ _ rfl
  · exact distinguished_congr Ω C hno he
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fbb66912a1a80a00041a163ce8e859aa20dc057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
