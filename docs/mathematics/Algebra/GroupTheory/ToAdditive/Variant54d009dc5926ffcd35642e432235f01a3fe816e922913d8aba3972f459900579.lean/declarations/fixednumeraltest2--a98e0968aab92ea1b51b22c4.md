# fixedNumeralTest2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4822394a29a98014de70654a3facd36b54d709e626e6e9bf7a0878243286a4cd",
  "kind": "def",
  "lexical_name": "fixedNumeralTest2",
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
  "slug": "fixednumeraltest2--a98e0968aab92ea1b51b22c4",
  "source": {
    "blob": "19b32427f2c10aa130cd3eb34bd824b3a3c7505f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 190,
    "path": "GRWTSK/Algebra/GroupTheory/ToAdditive/Variant54d009dc5926ffcd35642e432235f01a3fe816e922913d8aba3972f459900579.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a98e0968aab92ea1b51b22c403ce3176d370dc487264dfa1238637feb85a44dc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ToAdditive/Variant54d009dc5926ffcd35642e432235f01a3fe816e922913d8aba3972f459900579.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4822394a29a98014de70654a3facd36b54d709e626e6e9bf7a0878243286a4cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixedNumeralTest2 {α} [One α] :=
  @OfNat.ofNat ((fun _ => ℕ) (1 : α)) 1 (@One.toOfNat1 ((fun _ => ℕ) (1 : α)) _)

/-! Test the namespace bug (https://github.com/leanprover-community/mathlib4/pull/8733).
This code should *not* generate a lemma
  `add_some_def.in_namespace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ToAdditive/Variant54d009dc5926ffcd35642e432235f01a3fe816e922913d8aba3972f459900579.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ToAdditive/Variant54d009dc5926ffcd35642e432235f01a3fe816e922913d8aba3972f459900579.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19b32427f2c10aa130cd3eb34bd824b3a3c7505f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
