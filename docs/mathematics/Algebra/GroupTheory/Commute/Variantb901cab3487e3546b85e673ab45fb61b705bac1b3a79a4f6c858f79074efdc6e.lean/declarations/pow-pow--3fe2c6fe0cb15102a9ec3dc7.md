# pow_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67e757a407f3eb4374934916a2ffa95aa9574120",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8baa041c-7a53-6789-8be7-67df20d71af0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c0306e0-8907-c1f9-9668-9bb784d04e13",
  "kind": "theorem",
  "lexical_name": "pow_pow",
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
  "slug": "pow-pow--3fe2c6fe0cb15102a9ec3dc7",
  "source": {
    "blob": "67e757a407f3eb4374934916a2ffa95aa9574120",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 182,
    "path": "GRWTSK/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fe2c6fe0cb15102a9ec3dc7e24bf3de7e72a744333cd01b6bfc137b9831327f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c0306e0-8907-c1f9-9668-9bb784d04e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_pow (h : Commute a b) (m n : ℕ) : Commute (a ^ m) (b ^ n) :=
  (h.pow_left m).pow_right n
#align commute.pow_pow Commute.pow_powₓ
#align add_commute.nsmul_nsmul AddCommute.nsmul_nsmulₓ
-- `MulOneClass.toHasMul` vs. `MulOneClass.toMul`

-- porting note: `simpNF` told me to remove the `simp` attribute
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Commute/Variantb901cab3487e3546b85e673ab45fb61b705bac1b3a79a4f6c858f79074efdc6e.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e757a407f3eb4374934916a2ffa95aa9574120` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
