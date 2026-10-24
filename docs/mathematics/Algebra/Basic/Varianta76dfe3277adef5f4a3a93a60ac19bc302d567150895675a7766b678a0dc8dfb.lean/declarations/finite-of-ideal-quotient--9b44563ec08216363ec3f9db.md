# Finite.of_ideal_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ec72341-59af-a5a9-81ac-986fffd5c083",
  "kind": "lemma",
  "lexical_name": "Finite.of_ideal_quotient",
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
  "slug": "finite-of-ideal-quotient--9b44563ec08216363ec3f9db",
  "source": {
    "blob": "a1a84bb0e385ce49f92318c4536220a368987693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 234,
    "path": "GRWTSK/Algebra/Basic/Varianta76dfe3277adef5f4a3a93a60ac19bc302d567150895675a7766b678a0dc8dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b44563ec08216363ec3f9dba45f57e01f4bbf4d471f33e9f782c6674ba9e604",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta76dfe3277adef5f4a3a93a60ac19bc302d567150895675a7766b678a0dc8dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ec72341-59af-a5a9-81ac-986fffd5c083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Finite.of_ideal_quotient (I : Ideal R) [Finite I] [Finite (R ⧸ I)] : Finite R := by
  rw [finite_iff_ideal_quotient]; constructor <;> assumption
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta76dfe3277adef5f4a3a93a60ac19bc302d567150895675a7766b678a0dc8dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta76dfe3277adef5f4a3a93a60ac19bc302d567150895675a7766b678a0dc8dfb.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a84bb0e385ce49f92318c4536220a368987693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
