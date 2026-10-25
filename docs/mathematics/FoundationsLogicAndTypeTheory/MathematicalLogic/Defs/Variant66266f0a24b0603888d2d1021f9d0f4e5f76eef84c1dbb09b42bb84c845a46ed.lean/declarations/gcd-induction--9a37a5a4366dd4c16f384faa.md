# GCD.induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e559e5e8e57ed5a303946e3261583448ab17442c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:104e13e6-86f8-e000-a499-05bc9755a6bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:470af5b6-ff02-d7f6-a4b4-4d0b7f56b3d2",
  "kind": "theorem",
  "lexical_name": "GCD.induction",
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
  "slug": "gcd-induction--9a37a5a4366dd4c16f384faa",
  "source": {
    "blob": "e559e5e8e57ed5a303946e3261583448ab17442c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a37a5a4366dd4c16f384faaf899409a021ae3615a9bc19152fdb60eec8d8e83",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:470af5b6-ff02-d7f6-a4b4-4d0b7f56b3d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GCD.induction {P : R → R → Prop} (a b : R) (H0 : ∀ x, P 0 x)
    (H1 : ∀ a b, a ≠ 0 → P (b % a) a → P a b) : P a b :=
  if a0 : a = 0 then by
    -- Porting note: required for hygiene, the equation compiler introduces a dummy variable `x`
    -- See https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/topic/unnecessarily.20tombstoned.20argument/near/314573315
    change P a b
    exact a0.symm ▸ H0 b
  else
    have _ := mod_lt b a0
    H1 _ _ a0 (GCD.induction (b % a) a H0 H1)
termination_by _ => a
#align euclidean_domain.gcd.induction EuclideanDomain.GCD.induction

end

section GCD

variable [DecidableEq R]

/-- `gcd a b` is a (non-unique) element such that `gcd a b ∣ a` `gcd a b ∣ b`, and for
  any element `c` such that `c ∣ a` and `c ∣ b`, then `c ∣ gcd a b` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant66266f0a24b0603888d2d1021f9d0f4e5f76eef84c1dbb09b42bb84c845a46ed.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e559e5e8e57ed5a303946e3261583448ab17442c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
