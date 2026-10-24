# finrank_eq_finrank_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f33da35-e946-d34d-b9ec-7d1be7936644",
  "kind": "lemma",
  "lexical_name": "finrank_eq_finrank_residueField",
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
  "slug": "finrank-eq-finrank-residuefield--897ca577421a3248e5e7cd88",
  "source": {
    "blob": "27a9beb74c866fc617decaaa6abd91a0a54da604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 112,
    "path": "GRWTSK/Algebra/Etale/Variantd88e1e1b5ff19489f5e69d130285cb7c3230b4041ee01938ac60f2cad7c7282f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:897ca577421a3248e5e7cd8805203ffbbcfae9f7f7c72acae1f9525a25aac311",
  "verification": {
    "reference": "docs/verification/Algebra/Etale/Variantd88e1e1b5ff19489f5e69d130285cb7c3230b4041ee01938ac60f2cad7c7282f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f33da35-e946-d34d-b9ec-7d1be7936644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finrank_eq_finrank_residueField [Algebra.Etale R S] :
    Module.finrank R S =
      Module.finrank (ResidueField R) (ResidueField S) := by
  have : Module.Free R S := Module.free_of_flat_of_isLocalRing
  have e := AddEquiv.toLinearEquiv (R := R ⧸ maximalIdeal R) (Ideal.quotEquivOfEq <|
      Algebra.FormallyUnramified.map_maximalIdeal (R := R) (S := S)).toAddEquiv
    ?_
  · rw [← finrank_quotient_map (R := R) (S := S)]
    exact e.finrank_eq -- again IsLocalRing.residue should be abbrev
  · intro r x
    obtain ⟨r, rfl⟩ := Ideal.Quotient.mk_surjective r
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    simp only [RingEquiv.toAddEquiv_eq_coe]; rfl

/-- For a monogenic étale extension of local rings, the minimal polynomial of `β`
maps to the minimal polynomial of `β mod m_S` over the residue field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Etale/Variantd88e1e1b5ff19489f5e69d130285cb7c3230b4041ee01938ac60f2cad7c7282f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Etale/Variantd88e1e1b5ff19489f5e69d130285cb7c3230b4041ee01938ac60f2cad7c7282f.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a9beb74c866fc617decaaa6abd91a0a54da604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
