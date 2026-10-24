# instAddCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88f9e3016c623cf6a332ccd7e5efe0abc648db320bec680ce49ec6e5d98f3745",
  "kind": "instance",
  "lexical_name": "instAddCommMonoid",
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
  "slug": "instaddcommmonoid--3027e1130475e433aa71dfc9",
  "source": {
    "blob": "26ba397acab1672dc3e4e3fea49caa7877b18e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 212,
    "path": "GRWTSK/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3027e1130475e433aa71dfc976b84eb9dc0650855bf9e37b54a7aa6e01bab808",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88f9e3016c623cf6a332ccd7e5efe0abc648db320bec680ce49ec6e5d98f3745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddCommMonoid (r : R → R → Prop) : AddCommMonoid (RingQuot r) where
  add_assoc := by
    rintro ⟨⟨⟩⟩ ⟨⟨⟩⟩ ⟨⟨⟩⟩
    simp only [add_quot, add_assoc]
  zero_add := by
    rintro ⟨⟨⟩⟩
    simp [add_quot, ← zero_quot, zero_add]
  add_zero := by
    rintro ⟨⟨⟩⟩
    simp only [add_quot, ← zero_quot, add_zero]
  add_comm := by
    rintro ⟨⟨⟩⟩ ⟨⟨⟩⟩
    simp only [add_quot, add_comm]
  nsmul := (· • ·)
  nsmul_zero := by
    rintro ⟨⟨⟩⟩
    simp only [smul_quot, zero_smul, zero_quot]
  nsmul_succ := by
    rintro n ⟨⟨⟩⟩
    simp only [smul_quot, nsmul_eq_mul, Nat.cast_add, Nat.cast_one, add_mul, one_mul,
               add_comm, add_quot]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ba397acab1672dc3e4e3fea49caa7877b18e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
