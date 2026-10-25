# domRestrict_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c182f506b9385b435054e76c3a30054f545e19df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 603,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c063bb116ff90d12ebed3fa88ecc2e0918b8dcc843c9ba72a33e3e55832c74e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cfc395b-ec09-306b-0b0c-2b3f9ed1f78e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07b4571b-b41d-4e55-835d-725fdaf57cbc",
  "kind": "theorem",
  "lexical_name": "domRestrict_apply",
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
  "slug": "domrestrict-apply--da439f494f868967c510c430",
  "source": {
    "blob": "c182f506b9385b435054e76c3a30054f545e19df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 603,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant5c063bb116ff90d12ebed3fa88ecc2e0918b8dcc843c9ba72a33e3e55832c74e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da439f494f868967c510c4305b4123723efb583ae38f4dbf4313ba462966faba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant5c063bb116ff90d12ebed3fa88ecc2e0918b8dcc843c9ba72a33e3e55832c74e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07b4571b-b41d-4e55-835d-725fdaf57cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domRestrict_apply {N : Type*} [Mul N] [SetLike σ M] [MulMemClass σ M]
    (f : M →ₙ* N) {S : σ} (x : S) : f.domRestrict S x = f x :=
  rfl

@[deprecated (since := "2026-07-19")] alias restrict := domRestrict
@[deprecated (since := "2026-07-19")] alias _root_.AddHom.restrict := _root_.AddHom.domRestrict
@[deprecated (since := "2026-07-19")] alias restrict_apply := domRestrict_apply
@[deprecated (since := "2026-07-19")]
alias _root_.AddHom.restrict_apply := _root_.AddHom.domRestrict_apply

/-- Restriction of a semigroup hom to a subsemigroup of the codomain. -/
@[to_additive (attr := simps)
  /-- Restriction of an `AddSemigroup` hom to an `AddSubsemigroup` of the codomain. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant5c063bb116ff90d12ebed3fa88ecc2e0918b8dcc843c9ba72a33e3e55832c74e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant5c063bb116ff90d12ebed3fa88ecc2e0918b8dcc843c9ba72a33e3e55832c74e.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c182f506b9385b435054e76c3a30054f545e19df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
