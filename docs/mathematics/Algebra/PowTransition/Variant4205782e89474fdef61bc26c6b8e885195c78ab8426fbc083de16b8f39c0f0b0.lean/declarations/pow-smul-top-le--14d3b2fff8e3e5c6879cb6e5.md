# pow_smul_top_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93e30075-0f28-25eb-95a1-8b402fea1ebf",
  "kind": "lemma",
  "lexical_name": "pow_smul_top_le",
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
  "slug": "pow-smul-top-le--14d3b2fff8e3e5c6879cb6e5",
  "source": {
    "blob": "3b102a61d06714039051207d7bc3d1d97ba3833d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14d3b2fff8e3e5c6879cb6e5fae6099ac90fa5117f086696378ee533039b5176",
  "verification": {
    "reference": "docs/verification/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93e30075-0f28-25eb-95a1-8b402fea1ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_smul_top_le {m n : ℕ} (h : m ≤ n) : (I ^ n • ⊤ : Submodule R M) ≤ I ^ m • ⊤ :=
  smul_mono_left (Ideal.pow_le_pow_right h)

/--
The linear map from `M ⧸ I ^ m • ⊤` to `M ⧸ I ^ n • ⊤` induced by
the natural inclusion `I ^ n • ⊤ → I ^ m • ⊤`.

To future contributors: Before adding lemmas related to `Submodule.factorPow`, please
check whether it can be generalized to `Submodule.factor` and whether the
corresponding (more general) lemma for `Submodule.factor` already exists.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b102a61d06714039051207d7bc3d1d97ba3833d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
