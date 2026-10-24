# ofRat_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdefa2a1-6e7e-926f-4637-66b83beb07aa",
  "kind": "theorem",
  "lexical_name": "ofRat_zpow",
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
  "slug": "ofrat-zpow--85fd569a1a06dd439f17e201",
  "source": {
    "blob": "9f5da884e88f24480c5970a8a08091ff4ac917c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 158,
    "path": "GRWTSK/Algebra/FieldNormNum/Variantf1aa6bed5c5819bed5fca5088382f8454cc0ad6f9a6b9eaa4c483af4fda2b5a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85fd569a1a06dd439f17e201fa24ec22dc6d786492abad5882e6660ad0e5d0a6",
  "verification": {
    "reference": "docs/verification/Algebra/FieldNormNum/Variantf1aa6bed5c5819bed5fca5088382f8454cc0ad6f9a6b9eaa4c483af4fda2b5a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdefa2a1-6e7e-926f-4637-66b83beb07aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofRat_zpow {α} [Field α] [IsCharP α 0] (a : Rat) (n : Int) : (ofRat (a^n) : α) = ofRat a ^ n := by
  cases n
  next => rw [Int.ofNat_eq_natCast, Rat.zpow_natCast, Field.zpow_natCast, ofRat_npow]
  next =>
    rw [Int.negSucc_eq, Rat.zpow_neg, Field.zpow_neg, ofRat_inv]
    congr 1
    have : (1 : Int) = (1 : Nat) := rfl
    rw [this, ← Int.natCast_add, Rat.zpow_natCast, Field.zpow_natCast, ofRat_npow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldNormNum/Variantf1aa6bed5c5819bed5fca5088382f8454cc0ad6f9a6b9eaa4c483af4fda2b5a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldNormNum/Variantf1aa6bed5c5819bed5fca5088382f8454cc0ad6f9a6b9eaa4c483af4fda2b5a8.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5da884e88f24480c5970a8a08091ff4ac917c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
