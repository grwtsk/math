# prod_le_prod_iff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd49998c-029f-31a4-1233-0f2376223aee",
  "kind": "theorem",
  "lexical_name": "prod_le_prod_iff_le",
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
  "slug": "prod-le-prod-iff-le--94d5af587dfb2d21444ca3d3",
  "source": {
    "blob": "cf401250dde34a934d25e304e587c93dabbe5bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1397,
    "line": 1376,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94d5af587dfb2d21444ca3d317a287de974e939480f04a8b59928e6df6c53d26",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd49998c-029f-31a4-1233-0f2376223aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1376–1397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_le_prod_iff_le [Nontrivial α] {p q : Multiset (Associates α)}
    (hp : ∀ a ∈ p, Irreducible a) (hq : ∀ a ∈ q, Irreducible a) : p.prod ≤ q.prod ↔ p ≤ q :=
  Iff.intro
    (by
      classical
        rintro ⟨c, eqc⟩
        refine' Multiset.le_iff_exists_add.2 ⟨factors c, unique' hq (fun x hx => _) _⟩
        · obtain h | h := Multiset.mem_add.1 hx
          · exact hp x h
          · exact irreducible_of_factor _ h
        · rw [eqc, Multiset.prod_add]
          congr
          refine' associated_iff_eq.mp (factors_prod fun hc => _).symm
          refine' not_irreducible_zero (hq _ _)
          rw [← prod_eq_zero_iff, eqc, hc, mul_zero])
    prod_le_prod
#align associates.prod_le_prod_iff_le Associates.prod_le_prod_iff_le

variable [dec : DecidableEq α] [dec' : DecidableEq (Associates α)]

/-- This returns the multiset of irreducible factors as a `FactorSet`,
  a multiset of irreducible associates `WithTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean#L1376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf401250dde34a934d25e304e587c93dabbe5bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
