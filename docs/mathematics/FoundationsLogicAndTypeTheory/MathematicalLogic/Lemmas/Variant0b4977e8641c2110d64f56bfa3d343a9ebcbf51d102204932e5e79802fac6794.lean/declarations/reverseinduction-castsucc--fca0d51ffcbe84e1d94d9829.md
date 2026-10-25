# reverseInduction_castSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c3b9bba-b082-5e53-c079-52ad2583cad6",
  "kind": "theorem",
  "lexical_name": "reverseInduction_castSucc",
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
  "slug": "reverseinduction-castsucc--fca0d51ffcbe84e1d94d9829",
  "source": {
    "blob": "e4d7111fb21213892e900670cb95485ae11c4224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1050,
    "line": 1036,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca0d51ffcbe84e1d94d9829c8f824daaf8b05e90df2c7d3e0bfa74c27da1b95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c3b9bba-b082-5e53-c079-52ad2583cad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1036–1050.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem reverseInduction_castSucc {n : Nat} {motive : Fin (n + 1) → Sort _} {zero succ}
    (i : Fin n) : reverseInduction (motive := motive) zero succ (castSucc i) =
      succ i (reverseInduction zero succ i.succ) := by
  rw [reverseInduction, reverseInduction_castSucc_aux _ _ _ i.isLt, reverseInduction]

/--
Proves a statement by cases on the underlying `Nat` value in a `Fin (n + 1)`, checking whether the
value is the greatest representable or a predecessor of some other.

The two cases are:
 * `last`, used when the value is `Fin.last n`
 * `cast`, used when the value is of the form `(j : Fin n).succ`

The corresponding induction principle is `Fin.reverseInduction`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean#L1036).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d7111fb21213892e900670cb95485ae11c4224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
