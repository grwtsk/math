# contravariantClass_add_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dd49bd464c5d33d485a593349566c60f34e6b0c5d2be956c0563c3bb5a5a8dc",
  "kind": "instance",
  "lexical_name": "contravariantClass_add_lt",
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
  "slug": "contravariantclass-add-lt--7ffdd9647fb506081f4554ac",
  "source": {
    "blob": "a9f802372208fb86bae82fa31f0bd5c0497c21da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 67,
    "path": "GRWTSK/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ffdd9647fb506081f4554ac076620149626e72b84b9547b34ac3c9e176d1991",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dd49bd464c5d33d485a593349566c60f34e6b0c5d2be956c0563c3bb5a5a8dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance contravariantClass_add_lt [ContravariantClass M M (· + ·) (· < ·)] :
    ContravariantClass { x : M // 0 < x } { x : M // 0 < x } (· + ·) (· < ·) :=
  ⟨fun _ _ _ h => Subtype.coe_lt_coe.1 <| lt_of_add_lt_add_left h⟩
#align positive.contravariant_class_add_lt Positive.contravariantClass_add_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ring/Variant53799b76403f733c6b45012a09f5626f048655226683ffcb1117652c1cee1793.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f802372208fb86bae82fa31f0bd5c0497c21da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
