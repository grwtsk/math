# _root_.GRWTSK.NumberTheory.CoeEta.Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.IsPrimitiveRoot.toInteger_cube_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50f9a582-6991-1a75-c797-f37e7c7a467e",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.NumberTheory.CoeEta.Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.IsPrimitiveRoot.toInteger_cube_eq_one",
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
  "slug": "root-grwtsk-numbertheory-coeeta-variantc79cf7838fcb272a31b87fe70a7fa6593--214d7768d1ba41eb29f65818",
  "source": {
    "blob": "60210ab3a64884e590b421544045b0fad89637b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 49,
    "path": "GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:214d7768d1ba41eb29f6581817ff396ce2a8659daad7d0e90437a77af50af471",
  "verification": {
    "reference": "docs/verification/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50f9a582-6991-1a75-c797-f37e7c7a467e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.NumberTheory.CoeEta.Variantc79cf7838fcb272a31b87fe70a7fa6593be25242bc27a3c2ec2545591050dd15.IsPrimitiveRoot.toInteger_cube_eq_one : hζ.toInteger ^ 3 = 1 :=
  hζ.toInteger_isPrimitiveRoot.pow_eq_one

/-- Let `u` be a unit in `(𝓞 K)ˣ`, then `u ∈ [1, -1, η, -η, η^2, -η^2]`. -/
-- Here `List` is more convenient than `Finset`, even if further from the informal statement.
-- For example, `fin_cases` below does not work with a `Finset`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60210ab3a64884e590b421544045b0fad89637b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
