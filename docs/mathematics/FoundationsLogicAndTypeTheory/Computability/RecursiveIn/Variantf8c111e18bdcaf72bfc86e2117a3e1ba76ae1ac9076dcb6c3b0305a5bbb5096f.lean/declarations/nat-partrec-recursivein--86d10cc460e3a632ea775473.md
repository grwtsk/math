# Nat.Partrec.recursiveIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c1362b5-0c77-d4f2-8036-7d49eaddb12b",
  "kind": "lemma",
  "lexical_name": "Nat.Partrec.recursiveIn",
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
  "slug": "nat-partrec-recursivein--86d10cc460e3a632ea775473",
  "source": {
    "blob": "a04dd78eaaf519f9823ede6b5f75d444e2b03cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variantf8c111e18bdcaf72bfc86e2117a3e1ba76ae1ac9076dcb6c3b0305a5bbb5096f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86d10cc460e3a632ea775473f1d20f114278da19a138f6d40af623e0e79c0a7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variantf8c111e18bdcaf72bfc86e2117a3e1ba76ae1ac9076dcb6c3b0305a5bbb5096f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c1362b5-0c77-d4f2-8036-7d49eaddb12b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.Partrec.recursiveIn {f : ℕ →. ℕ} {O} (pF : Nat.Partrec f) :
    Nat.RecursiveIn O f := by
  induction pF with
  | zero | succ | left | right => constructor
  | pair _ _ ih₁ ih₂ => exact .pair ih₁ ih₂
  | comp _ _ ih₁ ih₂ => exact .comp ih₁ ih₂
  | prec _ _ ih₁ ih₂ => exact .prec ih₁ ih₂
  | rfind _ ih => exact .rfind ih

/-- If a partial function is partial recursive, then it is `RecursiveIn` any oracle set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variantf8c111e18bdcaf72bfc86e2117a3e1ba76ae1ac9076dcb6c3b0305a5bbb5096f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variantf8c111e18bdcaf72bfc86e2117a3e1ba76ae1ac9076dcb6c3b0305a5bbb5096f.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a04dd78eaaf519f9823ede6b5f75d444e2b03cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
