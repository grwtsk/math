# toMul_uzpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f4ffec8-9c84-cf54-6a46-7029ae8f78d1",
  "kind": "lemma",
  "lexical_name": "toMul_uzpow",
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
  "slug": "tomul-uzpow--bd20c8917fa2cea1236c712d",
  "source": {
    "blob": "a52ba95fb1707b7a9c9f8254686656104946f76a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 72,
    "path": "GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd20c8917fa2cea1236c712d783ec179309a8471dafdcc879f7b10fb98e74157",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f4ffec8-9c84-cf54-6a46-7029ae8f78d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma toMul_uzpow (u : Additive ℤˣ) (r : R) : (r • u).toMul = u.toMul ^ r := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52ba95fb1707b7a9c9f8254686656104946f76a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
