# flat_of_localized_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a826f0c8-92d1-7c12-3ea0-dfead475270e",
  "kind": "theorem",
  "lexical_name": "flat_of_localized_span",
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
  "slug": "flat-of-localized-span--6dab3d580f6c26eda7cc89f0",
  "source": {
    "blob": "c2d705a7bbb357ed0257c0f6ec0d312162333865",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dab3d580f6c26eda7cc89f03da91c36f0af6761fcc5d92801058b5452732432",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a826f0c8-92d1-7c12-3ea0-dfead475270e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flat_of_localized_span
    (h : ∀ r : s, Flat S (LocalizedModule.Away r.1 M)) :
    Flat S M :=
  flat_of_isLocalized_span _ _ _ spn _ (fun _ ↦ mkLinearMap _ _) h

end Module

variable {A B : Type*} [CommRing A] [CommRing B] [Algebra A B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variantd380ef0ea5a10a8494a9694418b0ee8bbd1588b914f06a23193a7ade21f0cfcc.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2d705a7bbb357ed0257c0f6ec0d312162333865` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
