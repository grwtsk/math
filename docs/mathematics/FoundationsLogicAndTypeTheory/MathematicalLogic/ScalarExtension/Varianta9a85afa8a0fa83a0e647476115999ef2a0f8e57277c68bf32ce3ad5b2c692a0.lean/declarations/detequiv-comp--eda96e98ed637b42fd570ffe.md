# detEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4627fc5f-73be-806f-2477-6db142aba383",
  "kind": "theorem",
  "lexical_name": "detEquiv_comp",
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
  "slug": "detequiv-comp--eda96e98ed637b42fd570ffe",
  "source": {
    "blob": "c52da2547ab26c576fbae880888c55b40b0c5b37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eda96e98ed637b42fd570ffe799e64a5f2deea9d847b412264d7918ff3d129c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4627fc5f-73be-806f-2477-6db142aba383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem detEquiv_comp
    (D₁ : Theory.{uObj, uHom, uIso, uS, uLineS} M₁ S)
    {B C D : M₀.Object}
    (f : PerfectComplex.CertifiedQuasiIso M₀ B C)
    (g : PerfectComplex.CertifiedQuasiIso M₀ C D) :
    E.detEquiv D₁ (f.comp g) =
      (E.detEquiv D₁ f).trans (E.detEquiv D₁ g) := by
  rw [detEquiv, E.extendCertifiedQuasiIso_comp]
  exact CertifiedQuasiIso.detEquiv_comp D₁
    (E.extendCertifiedQuasiIso f) (E.extendCertifiedQuasiIso g)

end ScalarExtension

/--
Compatibility between determinant theories across a supplied scalar
extension.  `lineChange` is data, not an implicit coercion or an asserted
equivalence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Varianta9a85afa8a0fa83a0e647476115999ef2a0f8e57277c68bf32ce3ad5b2c692a0.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c52da2547ab26c576fbae880888c55b40b0c5b37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
