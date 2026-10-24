# le_padicValNat_iff_replicate_subperm_primeFactorsList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b2f8d4ba4bdbacb277d4b78e023e0d935c60fb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f950bd7-23e4-fe10-c75e-76e58da7fc0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53d9b8ca-bf79-281d-329a-7130217a8d99",
  "kind": "theorem",
  "lexical_name": "le_padicValNat_iff_replicate_subperm_primeFactorsList",
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
  "slug": "le-padicvalnat-iff-replicate-subperm-primefactorslist--6b24a53784b7e5d7aec3514e",
  "source": {
    "blob": "4b2f8d4ba4bdbacb277d4b78e023e0d935c60fb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b24a53784b7e5d7aec3514e23d03cb9785bc22ee349bc4947085df64d546816",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53d9b8ca-bf79-281d-329a-7130217a8d99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_padicValNat_iff_replicate_subperm_primeFactorsList {a b : ℕ} {n : ℕ} (ha : a.Prime)
    (hb : b ≠ 0) :
    n ≤ padicValNat a b ↔ replicate n a <+~ b.primeFactorsList := by
  rw [← le_emultiplicity_iff_replicate_subperm_primeFactorsList ha hb,
    Nat.finiteMultiplicity_iff.2 ⟨ha.ne_one, Nat.pos_of_ne_zero hb⟩
      |>.emultiplicity_eq_multiplicity, ← padicValNat_def,
    ENat.natCast_le_natCast]

/-- A weak upper bound on `padicValNat p n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Defs/Variant8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2f8d4ba4bdbacb277d4b78e023e0d935c60fb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
