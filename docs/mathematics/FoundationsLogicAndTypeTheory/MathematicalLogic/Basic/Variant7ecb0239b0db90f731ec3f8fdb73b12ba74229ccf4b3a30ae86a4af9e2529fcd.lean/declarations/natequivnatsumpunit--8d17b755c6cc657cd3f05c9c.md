# natEquivNatSumPUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bacaa7251d5cc3262fc1f393cbfe26c81fc89001f686f7366a14674ae124fcb3",
  "kind": "def",
  "lexical_name": "natEquivNatSumPUnit",
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
  "slug": "natequivnatsumpunit--8d17b755c6cc657cd3f05c9c",
  "source": {
    "blob": "8db63fbc42f7f389179399572e3ece56d53f5bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ecb0239b0db90f731ec3f8fdb73b12ba74229ccf4b3a30ae86a4af9e2529fcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d17b755c6cc657cd3f05c9c364e64f3ee8ef7b22b5b60ceda9c4b09089f0473",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ecb0239b0db90f731ec3f8fdb73b12ba74229ccf4b3a30ae86a4af9e2529fcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bacaa7251d5cc3262fc1f393cbfe26c81fc89001f686f7366a14674ae124fcb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def natEquivNatSumPUnit : ℕ ≃ ℕ ⊕ PUnit where
  toFun n := Nat.casesOn n (inr PUnit.unit) inl
  invFun := Sum.elim Nat.succ fun _ => 0
  left_inv n := by cases n <;> rfl
  right_inv := by rintro (_ | _) <;> rfl

/-- `ℕ ⊕ PUnit` is equivalent to `ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ecb0239b0db90f731ec3f8fdb73b12ba74229ccf4b3a30ae86a4af9e2529fcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7ecb0239b0db90f731ec3f8fdb73b12ba74229ccf4b3a30ae86a4af9e2529fcd.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8db63fbc42f7f389179399572e3ece56d53f5bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
