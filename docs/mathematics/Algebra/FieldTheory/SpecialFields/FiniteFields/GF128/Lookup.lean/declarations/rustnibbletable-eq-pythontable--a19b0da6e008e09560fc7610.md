# rustNibbleTable_eq_pythonTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8f56aaf-d5ce-09db-43b1-44a980aeb1c3",
  "kind": "theorem",
  "lexical_name": "rustNibbleTable_eq_pythonTable",
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
  "slug": "rustnibbletable-eq-pythontable--a19b0da6e008e09560fc7610",
  "source": {
    "blob": "352f02dad0fe6e4dfd183e41dfb239127aaac989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 152,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Lookup.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a19b0da6e008e09560fc76107fd7fe0f1a4ab1b5a881f4f3e9fb7860ac50cb71",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8f56aaf-d5ce-09db-43b1-44a980aeb1c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rustNibbleTable_eq_pythonTable (coefficient : Word) :
    rustNibbleTable coefficient = pythonTable coefficient 4 := by
  have hr : List.range 16 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15] := by decide
  rw [rustNibbleTable, hr]
  have hc1 : (BitVec.ofNat 4 1).ctz.toNat = 0 := by decide
  have hc2 : (BitVec.ofNat 4 2).ctz.toNat = 1 := by decide
  have hc3 : (BitVec.ofNat 4 3).ctz.toNat = 0 := by decide
  have hc4 : (BitVec.ofNat 4 4).ctz.toNat = 2 := by decide
  have hc5 : (BitVec.ofNat 4 5).ctz.toNat = 0 := by decide
  have hc6 : (BitVec.ofNat 4 6).ctz.toNat = 1 := by decide
  have hc7 : (BitVec.ofNat 4 7).ctz.toNat = 0 := by decide
  have hc8 : (BitVec.ofNat 4 8).ctz.toNat = 3 := by decide
  have hc9 : (BitVec.ofNat 4 9).ctz.toNat = 0 := by decide
  have hc10 : (BitVec.ofNat 4 10).ctz.toNat = 1 := by decide
  have hc11 : (BitVec.ofNat 4 11).ctz.toNat = 0 := by decide
  have hc12 : (BitVec.ofNat 4 12).ctz.toNat = 2 := by decide
  have hc13 : (BitVec.ofNat 4 13).ctz.toNat = 0 := by decide
  have hc14 : (BitVec.ofNat 4 14).ctz.toNat = 1 := by decide
  have hc15 : (BitVec.ofNat 4 15).ctz.toNat = 0 := by decide
  simp [rustNibbleEntry, pythonTable, hc1, hc2, hc3, hc4, hc5, hc6, hc7, hc8, hc9, hc10, hc11, hc12, hc13, hc14, hc15,
    BitVec.xor_assoc, BitVec.xor_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Lookup.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `352f02dad0fe6e4dfd183e41dfb239127aaac989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
