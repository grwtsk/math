# sum_nat_eq_add_sum_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8971d33a-525b-3d75-5ceb-ba9d6024060c",
  "kind": "theorem",
  "lexical_name": "sum_nat_eq_add_sum_succ",
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
  "slug": "sum-nat-eq-add-sum-succ--ac2c89cefa1de57615e24afb",
  "source": {
    "blob": "d8c71d66dc3c1e60f4afed339f579a27cff5f0de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 400,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantac12d54f9fc757303673d3d7437286082c43f07f8054db9ec9c936cc5a7548d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac2c89cefa1de57615e24afb14f82dc68f458b128e18596ba2e4b019e4269e44",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantac12d54f9fc757303673d3d7437286082c43f07f8054db9ec9c936cc5a7548d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8971d33a-525b-3d75-5ceb-ba9d6024060c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_nat_eq_add_sum_succ (f : ℕ → Cardinal.{u}) :
    Cardinal.sum f = f 0 + Cardinal.sum fun i => f (i + 1) := by
  refine (Equiv.sigmaNatSucc fun i => Quotient.out (f i)).cardinal_eq.trans ?_
  simp only [mk_sum, mk_out, lift_id, mk_sigma]

/-! ### Indexed cardinal `prod` -/

/-- The indexed product of cardinals is the cardinality of the Pi type
  (dependent product). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantac12d54f9fc757303673d3d7437286082c43f07f8054db9ec9c936cc5a7548d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantac12d54f9fc757303673d3d7437286082c43f07f8054db9ec9c936cc5a7548d6.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c71d66dc3c1e60f4afed339f579a27cff5f0de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
