# cast_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a434670cdc7eb33fd87f3f7b445af49734c2b8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5d49c07-978a-2bcd-e31a-af86103b2e24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0b86d2e-1c05-2991-f6d4-898c74e651ab",
  "kind": "theorem",
  "lexical_name": "cast_add",
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
  "slug": "cast-add--cbd6187c5e29ec2fa2e95ce2",
  "source": {
    "blob": "1a434670cdc7eb33fd87f3f7b445af49734c2b8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd6187c5e29ec2fa2e95ce29e781ae05a3f9d97a36a46c834623168269f61bd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0b86d2e-1c05-2991-f6d4-898c74e651ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_add : ∀ m n, ((m + n : ℤ) : R) = m + n
  | (m : ℕ), (n : ℕ) => by simp [← Int.ofNat_add, Nat.cast_add]
  | (m : ℕ), -[n+1] => by erw [cast_subNatNat, cast_ofNat, cast_negSucc, sub_eq_add_neg]
  | -[m+1], (n : ℕ) => by
    erw [cast_subNatNat, cast_ofNat, cast_negSucc, sub_eq_iff_eq_add, add_assoc,
      eq_neg_add_iff_add_eq, ← Nat.cast_add, ← Nat.cast_add, Nat.add_comm]
  | -[m+1], -[n+1] =>
    show (-[m + n + 1+1] : R) = _ by
      rw [cast_negSucc, cast_negSucc, cast_negSucc, ← neg_add_rev, ← Nat.cast_add,
        Nat.add_right_comm m n 1, Nat.add_assoc, Nat.add_comm]
#align int.cast_add Int.cast_addₓ
-- type had `HasLiftT`

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a434670cdc7eb33fd87f3f7b445af49734c2b8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
