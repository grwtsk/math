# frobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63971c49b90616c25490ff4d7ea2e22e6e5ae9b79de550b150b7bc7fdb878d1c",
  "kind": "def",
  "lexical_name": "frobenius",
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
  "slug": "frobenius--79d585e2feb77cb22ee5e95a",
  "source": {
    "blob": "959b9e6e1da663e7b53bfa0340c8e5e6ffdcb475",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 321,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant7aab29f90e99ded1f03a3edf9870d459cfa076fdd700def6a0b3831dda3f6b01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79d585e2feb77cb22ee5e95aa89f894deefcda89ff5b4d48344d9b9d19273f6b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant7aab29f90e99ded1f03a3edf9870d459cfa076fdd700def6a0b3831dda3f6b01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63971c49b90616c25490ff4d7ea2e22e6e5ae9b79de550b150b7bc7fdb878d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def frobenius : R →+* R where
  __ := powMonoidHom p
  map_zero' := zero_pow (expChar_pos R p).ne'
  map_add' _ _ := add_pow_expChar ..

/-- The iterated Frobenius map `x ↦ x ^ p ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant7aab29f90e99ded1f03a3edf9870d459cfa076fdd700def6a0b3831dda3f6b01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant7aab29f90e99ded1f03a3edf9870d459cfa076fdd700def6a0b3831dda3f6b01.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959b9e6e1da663e7b53bfa0340c8e5e6ffdcb475` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
