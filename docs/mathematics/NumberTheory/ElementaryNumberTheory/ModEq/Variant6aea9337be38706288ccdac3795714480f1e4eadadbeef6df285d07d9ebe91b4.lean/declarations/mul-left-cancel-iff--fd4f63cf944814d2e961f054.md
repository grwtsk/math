# mul_left_cancel_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0c05a787a110d01452136b5f4a720b4d3bae893",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1beae9fb-74d6-996d-fc81-27ab11bef5d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e957c75-ab7f-9c6f-c3d4-92be23a28338",
  "kind": "theorem",
  "lexical_name": "mul_left_cancel_iff'",
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
  "slug": "mul-left-cancel-iff--fd4f63cf944814d2e961f054",
  "source": {
    "blob": "f0c05a787a110d01452136b5f4a720b4d3bae893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 189,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd4f63cf944814d2e961f05408a4530efbb799c041a26b1950f38287ba92a1d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e957c75-ab7f-9c6f-c3d4-92be23a28338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_left_cancel_iff' {a b c m : ℕ} (hc : c ≠ 0) :
    c * a ≡ c * b [MOD c * m] ↔ a ≡ b [MOD m] :=
  ⟨ModEq.mul_left_cancel' hc, ModEq.mul_left' _⟩
#align nat.modeq.mul_left_cancel_iff' Nat.ModEq.mul_left_cancel_iff'

/-- Cancel right multiplication on both sides of the `≡` and in the modulus.

For cancelling right multiplication in the modulus, see `Nat.ModEq.of_mul_right`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant6aea9337be38706288ccdac3795714480f1e4eadadbeef6df285d07d9ebe91b4.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0c05a787a110d01452136b5f4a720b4d3bae893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
