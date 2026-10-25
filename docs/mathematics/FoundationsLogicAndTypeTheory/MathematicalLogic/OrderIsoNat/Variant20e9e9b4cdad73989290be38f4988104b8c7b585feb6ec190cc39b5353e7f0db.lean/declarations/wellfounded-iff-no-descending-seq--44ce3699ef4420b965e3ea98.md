# wellFounded_iff_no_descending_seq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0aa729a63612b8d577bb05dfc5c1bb6966e2524",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93188287-340b-c4c3-9520-d13ccedf9059",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ec120db-0f22-8ad7-ebed-7f86ce5f69bb",
  "kind": "theorem",
  "lexical_name": "wellFounded_iff_no_descending_seq",
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
  "slug": "wellfounded-iff-no-descending-seq--44ce3699ef4420b965e3ea98",
  "source": {
    "blob": "c0aa729a63612b8d577bb05dfc5c1bb6966e2524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ce3699ef4420b965e3ea98290185d6639d2562fef8bf4cba1455ee0f16d532",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ec120db-0f22-8ad7-ebed-7f86ce5f69bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_iff_no_descending_seq :
    WellFounded r ↔ IsEmpty (((· > ·) : ℕ → ℕ → Prop) ↪r r) := by
  constructor
  · rintro ⟨h⟩
    exact ⟨fun f => not_acc_of_decreasing_seq f 0 (h _)⟩
  · intro h
    exact ⟨fun x => acc_iff_no_decreasing_seq.2 inferInstance⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0aa729a63612b8d577bb05dfc5c1bb6966e2524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
