# extendScalars_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb9b2f7c-e980-6fbe-ab42-b61a73bc677a",
  "kind": "theorem",
  "lexical_name": "extendScalars_injective",
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
  "slug": "extendscalars-injective--6093d4a350cfef335a436b00",
  "source": {
    "blob": "a69559675ab7ebf209bc5771990976775dc93d14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 845,
    "line": 823,
    "path": "GRWTSK/Algebra/FieldTheory/Basic/Variant79ddaf452b3744fac5398293c657d5834250a5df68111ef8261527d2b0f0dbbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6093d4a350cfef335a436b00150ea6e0720f2bc1be068d35e647bc6e26e73a83",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Basic/Variant79ddaf452b3744fac5398293c657d5834250a5df68111ef8261527d2b0f0dbbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb9b2f7c-e980-6fbe-ab42-b61a73bc677a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 823–845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendScalars_injective :
    Function.Injective fun E : { E : IntermediateField K L // F ≤ E } ↦ extendScalars E.2 :=
  (extendScalars.orderIso F).injective

end IntermediateField

end ExtendScalars

namespace IntermediateField

variable {S}

section Tower

section Restrict

variable {F E : IntermediateField K L} (h : F ≤ E)

/--
If `F ≤ E` are two intermediate fields of `L / K`, then `F` is also an intermediate field of
`E / K`. It is an inverse of `IntermediateField.lift`, and can be viewed as a dual to
`IntermediateField.extendScalars`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/Basic/Variant79ddaf452b3744fac5398293c657d5834250a5df68111ef8261527d2b0f0dbbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/Basic/Variant79ddaf452b3744fac5398293c657d5834250a5df68111ef8261527d2b0f0dbbd.lean#L823).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a69559675ab7ebf209bc5771990976775dc93d14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
