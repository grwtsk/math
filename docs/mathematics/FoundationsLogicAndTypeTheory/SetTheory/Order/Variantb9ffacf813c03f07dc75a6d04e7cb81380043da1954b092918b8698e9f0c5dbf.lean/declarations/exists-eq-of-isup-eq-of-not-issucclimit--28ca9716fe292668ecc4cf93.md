# exists_eq_of_iSup_eq_of_not_isSuccLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ae5d19b-005e-3b04-c18d-c0d1eb7acbd1",
  "kind": "lemma",
  "lexical_name": "exists_eq_of_iSup_eq_of_not_isSuccLimit",
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
  "slug": "exists-eq-of-isup-eq-of-not-issucclimit--28ca9716fe292668ecc4cf93",
  "source": {
    "blob": "e3e11b461a35c09a42fdae4c50a7fc92ed598bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 580,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variantb9ffacf813c03f07dc75a6d04e7cb81380043da1954b092918b8698e9f0c5dbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28ca9716fe292668ecc4cf93f4dbdd6471f63e3ce36a1b4d4cbc18736dcad563",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variantb9ffacf813c03f07dc75a6d04e7cb81380043da1954b092918b8698e9f0c5dbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ae5d19b-005e-3b04-c18d-c0d1eb7acbd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_eq_of_iSup_eq_of_not_isSuccLimit
    {ι : Type u} [hι : Nonempty ι] (f : ι → Cardinal.{v}) (hf : BddAbove (range f))
    {c : Cardinal.{v}} (hc : ¬ IsSuccLimit c)
    (h : ⨆ i, f i = c) : ∃ i, f i = c := by
  subst h
  exact exists_eq_ciSup_of_not_isSuccLimit hf hc

/-! ### Indexed cardinal `prod` -/

/-- **König's theorem** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variantb9ffacf813c03f07dc75a6d04e7cb81380043da1954b092918b8698e9f0c5dbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variantb9ffacf813c03f07dc75a6d04e7cb81380043da1954b092918b8698e9f0c5dbf.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e11b461a35c09a42fdae4c50a7fc92ed598bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
