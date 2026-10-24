# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsSuccPrelimit.Variant2ad82746c003b5977e954ddbd08dd476811eec9abfff12f7da718b7e25923ae7.IsGLB.isPredPrelimit_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c60a09e3-dd75-aaf0-8276-8d959af3262c",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsSuccPrelimit.Variant2ad82746c003b5977e954ddbd08dd476811eec9abfff12f7da718b7e25923ae7.IsGLB.isPredPrelimit_of_notMem",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-is--fba0de76e1194588bb7a6619",
  "source": {
    "blob": "9cfffc9e2cdabc0548ede1e26c53bbeec2b890d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 595,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variantd4d8d5f7258a01c231b704fd81e7837affe8bcc658c216acae1c631def9d7bd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fba0de76e1194588bb7a6619f1f82d193119af9e03614e6434039b54bc9ac069",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variantd4d8d5f7258a01c231b704fd81e7837affe8bcc658c216acae1c631def9d7bd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c60a09e3-dd75-aaf0-8276-8d959af3262c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsSuccPrelimit.Variant2ad82746c003b5977e954ddbd08dd476811eec9abfff12f7da718b7e25923ae7.IsGLB.isPredPrelimit_of_notMem {s : Set α} (hs : IsGLB s a) (ha : a ∉ s) :
    IsPredPrelimit a := by
  simpa using (IsGLB.dual hs).isSuccPrelimit_of_notMem ha

@[deprecated (since := "2025-05-23")]
alias _root_.IsGLB.isPredPrelimit_of_not_mem := _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsSuccPrelimit.Variant2ad82746c003b5977e954ddbd08dd476811eec9abfff12f7da718b7e25923ae7.IsGLB.isPredPrelimit_of_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variantd4d8d5f7258a01c231b704fd81e7837affe8bcc658c216acae1c631def9d7bd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variantd4d8d5f7258a01c231b704fd81e7837affe8bcc658c216acae1c631def9d7bd4.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cfffc9e2cdabc0548ede1e26c53bbeec2b890d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
